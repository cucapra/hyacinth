#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Analysis/TargetTransformInfo.h>

#include <iostream>
#include <iterator> 
#include <list> 
#include <map>
#include <string>

#include "SMTConstraintGenerator.hpp"

using namespace llvm;
using namespace std;
using namespace z3;

namespace SMTConstraints {

class SMTConstraintGenerator::Internals {
  // helpers will live here
};

SMTConstraintGenerator::SMTConstraintGenerator() : solver(context) {

}

void SMTConstraintGenerator::constructSymbolicPlacements(Instruction *i) {  
  static int n;
  // Create symbolic placements for each instruction
  expr partition = context.int_const(("p" + to_string(n)).c_str());
  expr startTime = context.int_const(("s" + to_string(n)).c_str());
  expr endTime = context.int_const(("t" + to_string(n)).c_str());
  n++;

  SymbolicPlacement placement = InstructionPlacement<expr>(partition, 
    startTime, endTime);
  symbolicPlacements.insert(std::make_pair(i, placement));

  // Assert basic constraints: 0 <= start time, start time <= end time
  solver.add(0 <= partition);
  solver.add(0 <= startTime);
  solver.add(startTime <= endTime);
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

  switch (solver.check()) {
  case unsat:   cout << "unsat\n"; break;
  case sat:     cout << "sat\n"; break;
  case unknown: cout << "unknown\n"; break;
  }

  auto m = solver.get_model();
  cout << m << endl;

  return previous;
}

}
