#include "CodeSelection.hpp"

#include <set>

#include "llvm/Transforms/Utils/Cloning.h"

#include "ReplaceArguments.hpp"

using namespace llvm;
using namespace std;
using namespace SMTConstraints;

namespace ReplaceArguments {

ReplaceArgumentsPass::ReplaceArgumentsPass(ConcretePlacementMap p, Module *hm,
  Module *dm) : placements(p), hostMd(hm), deviceMd(dm) {
}

// Replace arguments to partitioned functions with calls to receive from
// device code
void ReplaceArgumentsPass::replaceArguments() {

  // Get the set of all partitions
  for (pair<Instruction *, ConcretePlacement> element : placements) {
    partitions.insert(element.second.partition);
  }


  for (Function &f : *deviceMd) {
    if (!CodeSelection::includeFunction(&f)) continue;

    // Create a clone of the function per partition for the device
    FunctionType *funType = f.getFunctionType();
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
