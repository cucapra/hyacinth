#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include <z3.h>

#include <list> 
#include <iterator> 
#include <map>

using namespace std; 
using namespace llvm;

/// Z3 configuration wrapper
class Z3Config {
  friend class Z3Context;
  Z3_config Config;

public:
  Z3Config() : Config(Z3_mk_config()) {
    // For now, set timeout to 5000ms = 5s
    Z3_set_param_value(Config, "timeout", "5000");
  }

  ~Z3Config() { Z3_del_config(Config); }
};

/// Z3 context wrapper
class Z3Context {
public:
  Z3_context Context;

  Z3Context() {
    Context = Z3_mk_context(Z3Config().Config);
  }

  ~Z3Context() {
    Z3_del_context(Context);
    Context = nullptr;
  }
};


template <typename T>

class InstructionPlacement {
  T Partition;
  T StartTime;
  T EndTime;

public:
  InstructionPlacement(T P, T S, T E) {
    Partition = P;
    StartTime = S;
    EndTime = E;
  }
};

typedef InstructionPlacement<int> ConcretePlacement;
typedef InstructionPlacement<Z3_ast> SymbolicPlacement;
typedef std::map<Value *, ConcretePlacement> ConcretePlacementMap;
typedef std::map<Value *, SymbolicPlacement> SymbolicPlacementMap;

class SMTConstraintGenerator {

  // Z3 context
  Z3Context Context;

  // SMT Solver
  Z3_solver Solver;

  // Existing placements for instructions external to the current block
  ConcretePlacementMap previousPlacements;

  // In progress symbolic placements for instructions in the current block
  SymbolicPlacementMap symbolicPlacements;

public:

  static Z3_ast mk_var(Z3_context ctx, char const* name, Z3_sort s) {
      return Z3_mk_const(ctx, Z3_mk_string_symbol(ctx, name), s);
  }

  static Z3_ast mk_int_var(Z3_context ctx, char const* name) {
      return mk_var(ctx, name, Z3_mk_int_sort(ctx));
  }

  SMTConstraintGenerator() {
    Solver = Z3_mk_simple_solver(Context.Context);
  }

  // Use SMT constraints to partition the current block's instructions, 
  // referencing the previous placement mappings as needed.
  ConcretePlacementMap partitionInstructionsInBlock(ConcretePlacementMap Previous,
    vector<Value *> Instructions) {

    // Create symbolic placements for each instruction

    for (Value *I : Instructions) {
      Z3_ast Partition, StartTime, EndTime;
      Partition = mk_int_var(Context.Context, "p");
      StartTime = mk_int_var(Context.Context, "s");
      EndTime = mk_int_var(Context.Context, "t");

      SymbolicPlacement Placement = InstructionPlacement<Z3_ast>(Partition, StartTime,
        EndTime);
      symbolicPlacements.insert(std::make_pair(I, Placement));
    }

    return Previous;
  }


};

