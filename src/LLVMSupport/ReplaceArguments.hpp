#pragma once

#include <llvm/IR/Module.h>

#include "SMTConstraintGenerator.hpp"

namespace ReplaceArguments {

class ReplaceArgumentsPass {

private:

  // Concrete placements for instructions
  SMTConstraints::ConcretePlacementMap placements;

  // All partitions
  std::set<int> partitions;

  // Reference to the host module
  llvm::Module *hostMd;

  // Reference to the device module
  llvm::Module *deviceMd;

  // Reference to the communications module
  llvm::Module *commsMd;

  class Internals;

public:

  // Index for argument communication numbering
  int commsIdx;

  ReplaceArgumentsPass(SMTConstraints::ConcretePlacementMap placements,
    llvm::Module *hostMd, llvm::Module *deviceMd, llvm::Module *commsMd);

  void replaceArguments();
};

}