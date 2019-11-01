#pragma once

#include <type_traits>
#include <vector>
#include <llvm/IR/Instruction.h>
#include <z3++.h>

namespace SMTConstraints {

enum SearchStrategy { linear, binary };

struct searchStrategies : public std::map<std::string, SearchStrategy>
{
    searchStrategies()
    {
        this->operator[]("linear") = linear;
        this->operator[]("binary") = binary;
    };
    ~searchStrategies(){}
};

struct SMTConfig {
  bool debug;
  int rows;
  int columns;
  int timeout;
  SearchStrategy strategy;
};

template <typename T> class InstructionPlacement {
public:
  T partition;
  T startTime;
  T endTime;
  static_assert(std::is_same<T,int>::value || std::is_same<T,z3::expr>::value,
    "Expected int or expr");

  InstructionPlacement(T p, T s, T e) : partition(p), startTime(s), endTime(e) {
  }
};

using ConcretePlacement = InstructionPlacement<int>;
using SymbolicPlacement = InstructionPlacement<z3::expr>;
using ConcretePlacementMap = std::map<llvm::Instruction *, ConcretePlacement>;
using SymbolicPlacementMap = std::map<llvm::Instruction *, SymbolicPlacement>;

class SMTConstraintGenerator {

private:
  // Configuration
  SMTConfig config;

  // Z3 context
  z3::context context;

  // SMT Solver
  z3::solver solver;

  // Existing placements for instructions external to the current block
  ConcretePlacementMap previousPlacements;

  // In progress symbolic placements for instructions in the current block
  SymbolicPlacementMap symbolicPlacements;

  // Constraint to optimize
  z3::expr latestTime;

  // Communication cost mapping
  z3::func_decl communicationCosts;

  class Internals;

public:

  SMTConstraintGenerator(SMTConfig config);

  void partitionInstructionsInBlock(std::vector<llvm::Instruction *> instructions);
};

}