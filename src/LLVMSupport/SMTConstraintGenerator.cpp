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

#include "CostModel.hpp"

#include "SMTConstraintGenerator.hpp"

using namespace llvm;
using namespace std;
using namespace z3;

// TODO: parameterize/make config object
#define SIZE 4

namespace SMTConstraints {

class SMTConstraintGenerator::Internals {
  // For internal helper functions

public:
  static void constructSymbolicPlacements(SMTConstraintGenerator *g, 
    Instruction *i, int n) {  
    // Create symbolic placements for each instruction
    expr partition = g->context.int_const(("p" + to_string(n)).c_str());
    expr startTime = g->context.int_const(("s" + to_string(n)).c_str());
    expr endTime = g->context.int_const(("t" + to_string(n)).c_str());

    SymbolicPlacement placement = InstructionPlacement<expr>(partition, 
      startTime, endTime);

    // Assert basic time and placement constraints
    g->solver.add(0 <= partition);
    g->solver.add(partition < SIZE);
    g->solver.add(0 <= startTime);
    g->solver.add(startTime <= endTime);

    // Assert cost model constraint: end time = start time + cost
    int cost = HyacinthCostModel::costForInstruction(i);
    g->solver.add(endTime == startTime + cost);

    // Ensure this instruction does not overlap with any previous instructions
    constrainOverlappingTimes(g, placement);

    // After comparisons, add it to the map
    g->symbolicPlacements.insert(make_pair(i, placement));
  }

  static void constrainOverlappingTimes(SMTConstraintGenerator *g,
    SymbolicPlacement placement) {
    for (const auto &p: g->symbolicPlacements) {

      InstructionPlacement<z3::expr> other = p.second;

      expr samePartition = placement.partition == other.partition;
      expr before = placement.endTime <= other.startTime;
      expr after = placement.startTime >= other.endTime;
      g->solver.add(implies(samePartition, before || after));
    }
  }

  static int getIntValue(SMTConstraintGenerator *g, model m, expr e) {
    int i = 0;
    bool success = Z3_get_numeral_int(g->context, m.eval(e), &i);
    if (!success) {
      cerr << "Error getting integer from Z3 expression " << e << endl; 
    }
    return i;
  }

  static void addMetadataInt(Instruction *i, string name, int n) {
      LLVMContext &c = i->getContext();
      MDNode *node = MDNode::get(c, MDString::get(c, to_string(n)));
      i->setMetadata(name, node);
  }

  static void addMetadata(SMTConstraintGenerator *g, model m) {
    for (const auto &p : g->symbolicPlacements) {

      Instruction *i = p.first;
      InstructionPlacement<expr> placement = p.second;

      addMetadataInt(i, "partition", getIntValue(g, m, placement.partition));
      addMetadataInt(i, "start", getIntValue(g, m, placement.startTime));
      addMetadataInt(i, "end", getIntValue(g, m, placement.endTime));
    }
  }
};

SMTConstraintGenerator::SMTConstraintGenerator() : solver(context) {
}

// Use SMT constraints to partition the current block's instructions, 
// referencing the previous placement mappings as needed.
ConcretePlacementMap SMTConstraintGenerator::partitionInstructionsInBlock(
  ConcretePlacementMap previous,
  vector<Instruction *> instructions) {

  // Create symbolic placements for each instruction
  int n = 0;
  for (Instruction *i : instructions) {
    Internals::constructSymbolicPlacements(this, i, n);
    n++;
  }

  switch (solver.check()) {
    case unsat:   
      cout << "unsat\n"; 
      return;
    case unknown:
      cout << "unknown\n";
      return;
    case sat:
      cout << "sat\n";
      break;
  }

  model m = solver.get_model();
  Internals::addMetadata(this, m);

  // Clear symbolic placements
  symbolicPlacements.clear();
  solver.reset();

  return previous;
}

}
