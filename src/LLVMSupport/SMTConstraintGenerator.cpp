#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/Analysis/TargetTransformInfo.h>

#include <iostream>
#include <iterator> 
#include <list> 
#include <map>
#include <optional>
#include <string>

#include "CostModel.hpp"

#include "SMTConstraintGenerator.hpp"

using namespace llvm;
using namespace std;
using namespace z3;

// TODO: parameterize/make config object
#define ROWS 2
#define COLS 1
#define SIZE ROWS * COLS

namespace SMTConstraints {

class SMTConstraintGenerator::Internals {
  // For internal helper functions

public:


  static Optional<model> incremementalPartitioning(SMTConstraintGenerator *g, 
    vector<Instruction *> instructions) {

    Optional<model> bestModel;
    int goal = sumTotalTime(instructions);

    // Check for blocks with no significant costs to partition
    if (goal < 0) {
        return bestModel;
    }

    // Incrememntalling attempt to solve with successively lower goals
    while (true) {
      cout << "Incremental partitioning for goal: " << goal << "\n";
      auto m = attemptPartitioningForGoal(g, instructions, goal);

      if (!m.hasValue()) {
        break;
      } 

      // Some better model found, find our new goal (undercutting current best)
      bestModel = m;
      int bestLatestTime = getIntValue(g, m.getValue(), g->latestTime);
      goal = bestLatestTime - 1;
    }
    return bestModel;
  }

  // Attempt to partition for a certain goal, return the model if successful
  static Optional<model> attemptPartitioningForGoal(SMTConstraintGenerator *g, 
    vector<Instruction *> instructions, int goal) {

    g->solver.push();
    g->solver.add(g->latestTime < goal);

    bool success = false;
    switch (g->solver.check()) {
      case unsat:   
        cout << "Unsat\n"; 
        break;
      case unknown:
        cout << "Unknown/Timeout\n";
        break;
      case sat:
        cout << "Sat\n";
        success = true;
        break;
    }

    Optional<model> mod;
    if (success) {
      // Solve! TODO: replace with iterative solve loop
      model m = g->solver.get_model();
      mod.emplace(m);
    } 

    g->solver.pop();
    return mod;
  }

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

    g->solver.add(endTime <= g->latestTime);

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
      const auto &previous = g->previousPlacements.find(operand);
      if (previous == g->previousPlacements.end()) {
        errs() << "No previous placement for: " << operand << "\n";
      } 

      expr partition = g->context.int_val(previous->second.partition);
      expr endTime = g->context.int_val(0);
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
      return;
    }

    // Incoming instructions require more complicated logic
    if (isa<Instruction>(operand)) {
      constrainInstructionOperand(g, i, (Instruction *)operand);
      return;
    }
    
    errs() << "unexpected operand:" << *operand << "\n";
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

  static void addConcretePlacements(SMTConstraintGenerator *g, 
    Optional<model> m) {

    int time = 0;
    for (const auto &pair : g->symbolicPlacements) {
      int p, s, e;
      Instruction *i = pair.first;

      if (m.hasValue()) {
        // Symbolic placements found, take concrete values from the model
        InstructionPlacement<expr> placement = pair.second;
        p = getIntValue(g, m.getValue(), placement.partition);
        s = getIntValue(g, m.getValue(), placement.startTime);
        e = getIntValue(g, m.getValue(), placement.endTime);
      } else {
        // Parititioning failed, for now, assign all to partition 0
        p = 0;

        // For now, recompute the time
        int cost = HyacinthCostModel::costForInstruction(i);
        s = time;
        e = time + cost;
        time = e;
      }

      // Add to concrete placement map 
      ConcretePlacement placement = InstructionPlacement<int>(p, s, e); 
      g->previousPlacements.insert(make_pair(i, placement));

      // Add metadata to the original LLVM module
      addMetadataInt(i, "partition", p);
      addMetadataInt(i, "start", s);
      addMetadataInt(i, "end", e);
    }
  }

  static void buildCommunicationCostTable(SMTConstraintGenerator *g) {
    for (int x = 0; x < ROWS; x++) {
      for (int y = 0; y < COLS; y++) {
        int cost = HyacinthCostModel::costForCommunication(x, y);
        expr xExpr = g->context.int_val(x);
        expr yExpr = g->context.int_val(y);
        g->solver.add(g->communicationCosts(xExpr, yExpr) == cost);
      }
    }
  }

  static expr costForCommunication(SMTConstraintGenerator *g, expr partition1,
    expr partition2) {

    func_decl costs = g->communicationCosts;
    return costs(partition1, partition2);
  }

  static void resetSolverState(SMTConstraintGenerator *g) {
    g->solver.pop();
    g->symbolicPlacements.clear();
  }

  static int sumTotalTime(vector<Instruction *> instructions) {
    int sum = 0;
    for (Instruction *i : instructions) {
      sum += HyacinthCostModel::costForInstruction(i);
    }
    return sum;
  }

};

SMTConstraintGenerator::SMTConstraintGenerator() : solver(context), 
  latestTime(context.int_const("latestTime")),
  communicationCosts(z3::function("communicationCosts", context.int_sort(), 
    context.int_sort(), context.int_sort())) {

  Internals::buildCommunicationCostTable(this);

  params p(context);
  p.set(":timeout", 10000u);
  solver.set(p);
}

// Use SMT constraints to partition the current block's instructions, 
// referencing the previous placement mappings as needed.
void SMTConstraintGenerator::
partitionInstructionsInBlock(vector<Instruction *> instructions) {

  solver.push();

  // Create symbolic placements for each instruction
  int n = 0;
  for (Instruction *i : instructions) {
    Internals::constructSymbolicPlacements(this, i, n);
    n++;
  }

  for (Instruction *i : instructions) {
    Internals::constrainInstruction(this, i);
  }

  auto mod = Internals::incremementalPartitioning(this, instructions);
  Internals::addConcretePlacements(this, mod);

  // Reset block-local solver state
  Internals::resetSolverState(this);
}

}
