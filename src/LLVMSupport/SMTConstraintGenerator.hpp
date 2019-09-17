#pragma once
#include <type_traits>
#include <vector>
#include <llvm/IR/Instruction.h>
#include <z3.h>

//using namespace llvm;
//using namespace std;  not in headers plz

namespace SMTConstraints {

template <typename T> class InstructionPlacement {
  T Partition;
  T StartTime;
  T EndTime;
  static_assert(std::is_same<T,int>::value || std::is_same<T,Z3_ast>::value, 
    "Expected int or Z3_ast");

public:
  InstructionPlacement(T P, T S, T E) {
      Partition = P;
      StartTime = S;
      EndTime = E;
  }
};

using ConcretePlacement = InstructionPlacement<int>;
using SymbolicPlacement = InstructionPlacement<Z3_ast>;
using ConcretePlacementMap = std::map<llvm::Value *, ConcretePlacement>;
using SymbolicPlacementMap = std::map<llvm::Value *, SymbolicPlacement>;

/// Z3 configuration wrapper
class Z3Config {
  friend class Z3Context;
  Z3_config config;

public:
  Z3Config();
  ~Z3Config();
};

/// Z3 context wrapper
class Z3Context {
public:
  Z3_context context;
  Z3Context();
  ~Z3Context();
};

class SMTConstraintGenerator {

private:
  // Z3 context
  Z3Context context;

  // SMT Solver
  Z3_solver solver;

  // Existing placements for instructions external to the current block
  ConcretePlacementMap previousPlacements;

  // In progress symbolic placements for instructions in the current block
  SymbolicPlacementMap symbolicPlacements;

public:

  SMTConstraintGenerator();

  Z3_ast intTerm(int i);
  Z3_ast zero();
  Z3_ast var(char const *name, Z3_sort s);
  Z3_ast intVar(char const *name);
  Z3_ast lte(Z3_ast t1, Z3_ast t2);
  void assertTerm(Z3_ast t);

  void constructSymbolicPlacements(llvm::Instruction *i);

  ConcretePlacementMap 
  partitionInstructionsInBlock(ConcretePlacementMap previous,
  std::vector<llvm::Instruction *> instructions);
};

}