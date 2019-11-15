#include "CodeSelection.hpp"

#include <set>

#include "llvm/Transforms/Utils/Cloning.h"

#include "ReplaceArguments.hpp"

using namespace llvm;
using namespace std;
using namespace SMTConstraints;

namespace ReplaceArguments {

/*

let new_addr_with_name name ty : llvalue =
  (* Allocate memory for this communication and a ready flag based on type *)
  let value = const_null ty in
  let ready_flag = const_null bool_type in
  let padding = const_null int_type in
  let comms_struct = const_struct context [| value; ready_flag; padding |] in

  (* Define the struct of { value, ready_flag, padding } as a global *)
  let global = define_global name comms_struct comms_module in

  (* Return the pointer to this global *)
  let gep = const_gep global [| const_i32 0 |] in
  const_ptrtoint gep (target_ptr_type ())

let new_comms_addr ty : llvalue =
  let id = !comms_id in
  comms_id := !comms_id + 1;
  new_addr_with_name ("comms_" ^ (string_of_int id)) ty

let new_arg_addr_name ty : (llvalue * string) =
  let id = !comms_id in
  comms_id := !comms_id + 1;
  let name = "arg_" ^ (string_of_int id) ^ "\x00" in
  let addr = new_addr_with_name name ty in
  (addr, name)


*/

// For internal helper functions
class ReplaceArgumentsPass::Internals {

public:

  static int newCommunicationID(ReplaceArgumentsPass *p) {
    int newID = p->commsIdx;
    p->commsIdx++;
    return newID;
  }

  static pair<Value *, string> argumentAddressWithName(ReplaceArgumentsPass *p,
    Type *ty) {

    // Claim a new communications id
    int id = newCommunicationID(p);
    string name = "comms_" + to_string(id);

    // Allocate memory for this communication and a ready flag based on type
    // Type *Constant::getNullValue
    // StructType *t = StructType::create();
    StructType *t = nullptr;
    ArrayRef<Constant *> val;
    Constant *s = ConstantStruct::get(t, val);

    // Define the struct of { value, ready_flag, padding } as a global
    GlobalVariable *addrStruct = new GlobalVariable(*(p->commsMd), ty, false,
        GlobalValue::CommonLinkage, s, name);

    // Return the pointer to this global
    /*
    auto buildGEP = [](ArrayRef<Value *> Srcs, Instruction *Inst) {
      Type *Ty = cast<PointerType>(Srcs[0]->getType())->getElementType();
      auto Indices = makeArrayRef(Srcs).drop_front(1);
      return GetElementPtrInst::Create(Ty, Srcs[0], Indices, "G", Inst);
    };
    */
    return pair<Value *, string>(addrStruct, name);
  }

};

ReplaceArgumentsPass::ReplaceArgumentsPass(ConcretePlacementMap p, Module *hm,
  Module *dm, Module *cm) : placements(p), hostMd(hm), deviceMd(dm),
  commsMd(cm) {}

// Replace arguments to partitioned functions with calls to receive from
// device code
void ReplaceArgumentsPass::replaceArguments() {

  // Get the set of all partitions
  for (pair<Instruction *, ConcretePlacement> element : placements) {
    partitions.insert(element.second.partition);
  }


  for (Function &f : *deviceMd) {
    if (!CodeSelection::includeFunction(&f)) continue;

    // Lookup the corresponding function on the host and create a clone
    Function *hostF = hostMd->getFunction(f.getName());
    FunctionType *funType = f.getFunctionType();
    Function *hostClone = Function::Create(funType, hostF->getLinkage(),
      "replace_" + f.getName(), hostMd);

    errs() << *hostClone << "\n";

    // Create a clone of the function per partition for the device
    vector<Type *> noParams;
    FunctionType *newFunType = FunctionType::get(funType->getReturnType(),
      noParams, false);

    for (int partition : partitions) {
      // Create the new function body and insert it into the module...
      Function *clone = Function::Create(newFunType, f.getLinkage(),
        f.getAddressSpace());
      clone->copyAttributesFrom(&f);
      clone->setComdat(f.getComdat());
      f.getParent()->getFunctionList().insert(f.getIterator(), clone);
      clone->setName(f.getName() + "_" + to_string(partition));

      ValueToValueMapTy VMap;

      // For now, replace all args with undefs.
      for (Argument &a : f.args()) {
        VMap[&a] = UndefValue::get(a.getType());
      }

      SmallVector<ReturnInst *, 4> Returns;

      CloneFunctionInto(clone, &f, VMap, /*ModuleLevelChanges=*/true, Returns);
    }
  }
}

}
