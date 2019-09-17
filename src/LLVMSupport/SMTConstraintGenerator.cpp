#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Analysis/TargetTransformInfo.h>

#include <iterator> 
#include <list> 
#include <map>

#include "SMTConstraintGenerator.hpp"

using namespace llvm;
using namespace std;

namespace SMTConstraints {

Z3Config::Z3Config() : config(Z3_mk_config()) {
  // For now, set timeout to 5000ms = 5s
  Z3_set_param_value(config, "timeout", "5000");
}

Z3Config::~Z3Config() { 
  Z3_del_config(config);
}

/// Z3 context wrapper
Z3Context::Z3Context() {
  context = Z3_mk_context(Z3Config().config);
}

Z3Context::~Z3Context() {
  Z3_del_context(context);
  context = nullptr;
}

SMTConstraintGenerator::SMTConstraintGenerator() {
  solver = Z3_mk_simple_solver(context.context);
}

Z3_ast SMTConstraintGenerator::intTerm(int i) {
  return Z3_mk_int(context.context, i, Z3_mk_int_sort(context.context));
}

Z3_ast SMTConstraintGenerator::zero() {
  return intTerm(0);
}

Z3_ast SMTConstraintGenerator::var(char const *name, Z3_sort s) {
    return Z3_mk_const(context.context, 
      Z3_mk_string_symbol(context.context, name), s);
}

Z3_ast SMTConstraintGenerator::intVar(char const *name) {
    return var(name, Z3_mk_int_sort(context.context));
}

Z3_ast SMTConstraintGenerator::lte(Z3_ast t1, Z3_ast t2) {
  return Z3_mk_le(context.context, t1, t2);
}

void SMTConstraintGenerator::assertTerm(Z3_ast t) {
  Z3_solver_assert(context.context, solver, t);
}

void SMTConstraintGenerator::constructSymbolicPlacements(Instruction *i) {
  // Create symbolic placements for each instruction
  Z3_ast partition, startTime, endTime;
  partition = intVar("p");
  startTime = intVar("s");
  endTime = intVar("t");

  SymbolicPlacement placement = InstructionPlacement<Z3_ast>(partition, 
    startTime, endTime);
  symbolicPlacements.insert(std::make_pair(i, placement));

  // Assert basic constraints: 0 <= start time, start time <= end time
  assertTerm(lte(zero(), startTime));
  assertTerm(lte(startTime, endTime));
}

// Use SMT constraints to partition the current block's instructions, 
// referencing the previous placement mappings as needed.
ConcretePlacementMap SMTConstraintGenerator::partitionInstructionsInBlock(
  ConcretePlacementMap previous,
  vector<Instruction *> instructions) {

  // Create symbolic placements for each instruction
  for (Instruction *i : instructions) {
    constructSymbolicPlacements(i);
  }

  return previous;
}

}
