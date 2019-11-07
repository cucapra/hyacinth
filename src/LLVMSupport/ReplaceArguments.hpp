#pragma once

#include <llvm/IR/Module.h>

#include "SMTConstraintGenerator.hpp"

namespace ReplaceArguments {

class ReplaceArgumentsPass {

private:

  // Concrete placements for instructions
  SMTConstraints::ConcretePlacementMap placements;

  // Reference to the host module
  llvm::Module *hostMd;

  // Reference to the device module
  llvm::Module *deviceMd;

  class Internals;

public:

  ReplaceArgumentsPass(SMTConstraints::ConcretePlacementMap placements,
    llvm::Module *hostMd, llvm::Module *deviceMd);

  void replaceArguments();
};

}