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
#define ROWS 2
#define COLS 2
#define SIZE ROWS * COLS

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
    for (const auto &p : g->symbolicPlacements) {

      InstructionPlacement<z3::expr> other = p.second;

      expr samePartition = placement.partition == other.partition;
      expr before = placement.endTime <= other.startTime;
      expr after = placement.startTime >= other.endTime;
      g->solver.add(implies(samePartition, before || after));
    }
  }

  static void constrainInstructionOperand(SMTConstraintGenerator *g, 
    Instruction *i, Instruction *operand) {

    const auto &currentPlacement = g->symbolicPlacements.at(i);

    // Find the placement of this operand, which may be from a previous
    // block's partitioning
    expr *opPartition = nullptr;
    expr *opEndTime = nullptr;

    const auto &placement = g->symbolicPlacements.find(operand);
    if (placement != g->symbolicPlacements.end()) {
      // Current, symbolic placement
      opPartition = &(placement->second.partition);
      opEndTime = &(placement->second.endTime);
    } else {
      // Concrete placement from previous partitioning
      const auto &previous = g->previousPlacements.at(operand);
      expr partition = g->context.int_val(previous.partition);
      expr endTime = g->context.int_val(previous.endTime);
      opPartition = &partition;
      opEndTime = &endTime;
    }

    // For now, pointers cannot be sent across paritions
    if (operand->getType()->isPointerTy()) {
      g->solver.add(currentPlacement.partition == *opPartition);
      g->solver.add(currentPlacement.startTime >= *opEndTime);
      return;
    } 

    // Incorporate communication costs
    int comms = costForCommunication(g, currentPlacement.partition,
      *opPartition);
    g->solver.add(currentPlacement.startTime >= *opEndTime + comms);
  }

  static void constrainOperand(SMTConstraintGenerator *g, Instruction *i, 
    Value *operand) {

    // No constraints for constants or arguments
    if (isa<Constant>(operand) || isa<Argument>(operand)) {
      return;
    }

    // For now, global accesses need to live on parition 0
    if (isa<GlobalValue>(operand)) {
      g->solver.add(g->symbolicPlacements.at(i).partition == 0);
    }

    // Incoming instructions require more complicated logic
    if (isa<Instruction>(operand)) {
      constrainInstructionOperand(g, i, (Instruction *)operand);
    }
  }

  static void constrainInstruction(SMTConstraintGenerator *g, Instruction *i) {
    for (const auto &operand : i->operands()) {
      constrainOperand(g, i, operand);
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

  static void buildCommunicationCostTable(SMTConstraintGenerator *g) {
    z3::sort intSort = g->context.int_sort();

    func_decl communicationCosts = z3::function("communicationCosts", intSort,
      intSort, intSort);
    for (int x = 0; x < ROWS; x++) {
      for (int y = 0; y < COLS; y++) {
        int cost = HyacinthCostModel::costForCommunication(x, y);
        expr xExpr = g->context.int_val(x);
        expr yExpr = g->context.int_val(y);
        g->solver.add(communicationCosts(xExpr, yExpr) == cost);
      }
    }
    g->communicationCosts = &communicationCosts;
  }

  static expr costForCommunication(SMTConstraintGenerator *g, expr partition1,
    expr partition2) {

    func_decl costs = *(g->communicationCosts);
    return costs(partition1, partition2);
  }
};

SMTConstraintGenerator::SMTConstraintGenerator() : solver(context), 
  latestTime(context.int_const("latestTime")) {
  Internals::buildCommunicationCostTable(this);
}

/*
void opt_example() {
    context c;
    optimize opt(c);
    params p(c);
    p.set("priority",c.str_symbol("pareto"));
    opt.set(p);
    expr x = c.int_const("x");
    expr y = c.int_const("y");
    opt.add(10 >= x && x >= 0);
    opt.add(10 >= y && y >= 0);
    opt.add(x + y <= 11);
    optimize::handle h1 = opt.maximize(x);
    optimize::handle h2 = opt.maximize(y);
    while (true) {
        if (sat == opt.check()) {
            std::cout << x << ": " << opt.lower(h1) << " " << y << ": " << opt.lower(h2) << "\n";
        }
        else {
            break;
        }
    }
}
*/

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

  // optimize optimize(context);
  // cout << optimize << endl;
  // optimize.minimize(latestTime);

  switch (solver.check()) {
    case unsat:   
      cout << "unsat\n"; 
      break;
    case unknown:
      cout << "unknown\n";
      break;
    case sat:
      cout << "sat\n";
      break;
  }

  // Solve! TODO: replace with iterative solve loop
  model m = solver.get_model();

  // Add partitioning as metadata to the IR
  Internals::addMetadata(this, m);

  // Clear symbolic placements
  symbolicPlacements.clear();
  solver.reset();

  return previous;
}

}
