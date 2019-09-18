#pragma once

#include <type_traits>
#include <vector>
#include <llvm/IR/Instruction.h>
#include <z3++.h>

namespace SMTConstraints {

template <typename T> class InstructionPlacement {
  T Partition;
  T StartTime;
  T EndTime;
  // static_assert(std::is_same<T,int>::value || std::is_same<T,expr>::value, 
  //   "Expected int or expr");

public:
  InstructionPlacement(T P, T S, T E) : Partition(P), StartTime(S), EndTime(E) {
  }
};

using ConcretePlacement = InstructionPlacement<int>;
using SymbolicPlacement = InstructionPlacement<z3::expr>;
using ConcretePlacementMap = std::map<llvm::Value *, ConcretePlacement>;
using SymbolicPlacementMap = std::map<llvm::Value *, SymbolicPlacement>;

class SMTConstraintGenerator {

private:
  // Z3 context
  z3::context context;

  // SMT Solver
  z3::solver solver;

  // Existing placements for instructions external to the current block
  ConcretePlacementMap previousPlacements;

  // In progress symbolic placements for instructions in the current block
  SymbolicPlacementMap symbolicPlacements;

  class Internals;

public:

  SMTConstraintGenerator();

  void constructSymbolicPlacements(llvm::Instruction *i);

  ConcretePlacementMap 
    partitionInstructionsInBlock(ConcretePlacementMap previous,
    std::vector<llvm::Instruction *> instructions);
};

}