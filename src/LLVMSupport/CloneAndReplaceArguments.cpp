#include "CodeSelection.hpp"

#include <set>

#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/Cloning.h"

#include "CloneAndReplaceArguments.hpp"

using namespace llvm;
using namespace std;
using namespace SMTConstraints;

namespace CloneAndReplaceArguments {

// For internal helper functions
class CloneAndReplaceArguments::Internals {

public:

  static int getPartition(Instruction *I) {
    auto &md = I->getMetadata("partition")->getOperand(0);
    return stoi(cast<MDString>(md)->getString());
  }

  static int newCommunicationID(CloneAndReplaceArguments *p) {
    int newID = p->commsIdx;
    p->commsIdx++;
    return newID;
  }

  static Value *argumentAddressWithName(CloneAndReplaceArguments *p,
    Type *ty) {

    // Claim a new communications id
    int id = newCommunicationID(p);
    string name = "arg_" + to_string(id);

    // Allocate memory for this communication and a ready flag based on type
    Type *boolType = IntegerType::get(p->commsMd->getContext(), 1);
    Type *intType = IntegerType::get(p->commsMd->getContext(), 32);

    Constant *value = Constant::getNullValue(ty);
    Constant *ready = Constant::getNullValue(boolType);
    Constant *padding = Constant::getNullValue(intType);

    // Define the struct as a global
    Constant *s = ConstantStruct::getAnon({value, ready, padding});

    GlobalVariable *addrStruct = new GlobalVariable(*(p->commsMd), s->getType(),
     false, GlobalValue::CommonLinkage, s, name);

    // Return the pointer to this global
    llvm::Type *i32Ty = llvm::IntegerType::getInt32Ty(p->commsMd->getContext());
    llvm::Constant *idx = llvm::ConstantInt::get(i32Ty, 0/*value*/, true);
    auto GEP = ConstantExpr::getGetElementPtr(s->getType(), addrStruct, idx);

    return GEP;
  }

  static void replaceArgumentOnClone(CloneAndReplaceArguments *p, Argument *a,
    Argument *cloneCxt, IRBuilder<> *builder, ValueToValueMapTy *VMap) {

    // Insert call to receive argument in the new entry block
    auto comms = Internals::argumentAddressWithName(p, a->getType());
    auto receiveArgF = p->deviceMd->getFunction("receive_argument");
    auto size = ConstantExpr::getSizeOf(a->getType());
    vector<Value *> args = {size, comms, cloneCxt};
    auto call = builder->CreateCall(receiveArgF, args, "receive");
    auto ptrType = PointerType::get(a->getType(), 0);
    auto bitcast = builder->CreateBitCast(call, ptrType, "bitcast");
    auto load =  builder->CreateLoad(a->getType(), bitcast, "receive_load");
    (*VMap)[a] = load;
  }

  static void sendArgumentFromHost(CloneAndReplaceArguments *p, Argument *a,
    Argument *cloneCxt, IRBuilder<> *builder, ValueToValueMapTy *VMap) {
  }
};

CloneAndReplaceArguments::CloneAndReplaceArguments(ConcretePlacementMap p, Module *hm,
  Module *dm, Module *cm) : placements(p), hostMd(hm), deviceMd(dm),
  commsMd(cm), commsIdx(0) {}

// Replace arguments to partitioned functions with calls to receive from
// device code
void CloneAndReplaceArguments::replaceArguments() {

  // Get the set of all partitions
  for (pair<Instruction *, ConcretePlacement> element : placements) {
    partitions.insert(element.second.partition);
  }

  // Clone functions as needed per partition
  for (Function &f : *deviceMd) {
    if (!CodeSelection::includeFunction(&f)) continue;

    // Lookup the corresponding function on the host and create a clone
    Function *hostF = hostMd->getFunction(f.getName());
    Function *hostClone = Function::Create(f.getFunctionType(),
      hostF->getLinkage(), "host_" + f.getName(), hostMd);

    // Create a clone of the function per partition for the device
    auto voidType = Type::getVoidTy(deviceMd->getContext());
    auto voidPtrType = PointerType::get(IntegerType::get(deviceMd->getContext(),
      8), 0);

    FunctionType *newFunType = FunctionType::get(voidType, {voidPtrType}, false);

    for (int partition : partitions) {
      // Create the new function body and insert it into the module...
      Function *clone = Function::Create(newFunType, f.getLinkage(),
        f.getAddressSpace());
      clone->copyAttributesFrom(&f);
      clone->setComdat(f.getComdat());
      f.getParent()->getFunctionList().insert(f.getIterator(), clone);
      clone->setName(f.getName() + "_" + to_string(partition));
      auto cloneCxt = clone->args().begin();

      BasicBlock *entry = BasicBlock::Create(deviceMd->getContext(), "receives",
       clone);
      IRBuilder<> builder(entry);
      ValueToValueMapTy VMap;

      // For each argument, check whether it is used in this partition; if so,
      // replace with a call to receive args in the entry block
      for (Argument &a : hostClone->args()) {

        bool usedInPartition = std::any_of(a.users().begin(), a.users().end(),
          [&partition](llvm::User *U) {
          Instruction *UInst = dyn_cast<Instruction>(U);
          return (UInst && Internals::getPartition(UInst) == partition);
        });

        if (usedInPartition) {
          Internals::replaceArgumentOnClone(this, &a, cloneCxt, &builder, &VMap);
        } else {
          // If this argument is never used in the partition, replace it with
          // undef for now
          VMap[&a] = UndefValue::get(a.getType());
        }
      }

      SmallVector<ReturnInst *, 4> Returns;
      CloneFunctionInto(clone, &f, VMap, /*ModuleLevelChanges=*/true, Returns);

      // Insert branch to old entry
      // TODO: This is a hack to get the second block, likely a better way
      BasicBlock *oldEntry;
      int i = 0;
      for (BasicBlock &b : *clone) {
        if (i == 1) {
          oldEntry = &b;
          break;
        }
        i++;
      }
      builder.CreateBr(oldEntry);
    }
  }
}

}
