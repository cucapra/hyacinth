#include <llvm/Analysis/AliasSetTracker.h>
#include <llvm/Analysis/TargetTransformInfo.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>

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

namespace SMTConstraints {

// For internal helper functions
class SMTConstraintGenerator::Internals {

public:


  static Optional<model> incremementalPartitioning(SMTConstraintGenerator *g,
    vector<Instruction *> instructions) {

    int upperBound = sumTotalTime(instructions);
    int lowerBound = criticalPath(instructions);

    // Check for blocks with no significant costs to partition
    if (upperBound <= lowerBound) {
      cout << "Not searching because lower and upper bounds overlap: [" << lowerBound << ", "  << upperBound << "]\n";
      return Optional<model>();
    }

    switch (g->config.strategy) {
      case binary:
        return binarySearch(g, instructions, upperBound, lowerBound);
      default:
        return linearSearch(g, instructions, upperBound, lowerBound);
    }
  }

  static Optional<model> linearSearch(SMTConstraintGenerator *g,
                                      vector<Instruction *> instructions,
                                      int upperBound,
                                      int lowerBound) {
    Optional<model> bestModel;
    int bestLatestTime = upperBound;

    // Incrementally attempt to solve with successively lower upperBounds
    while (true) {
      cout << "Linear search with: [" << lowerBound << ", "  << upperBound << "]\n";
      auto m = attemptPartitioningForGoal(g, instructions, upperBound);

      if (!m.hasValue()) {
        cout << "Linear search done at: " << bestLatestTime << "\n";
        break;
      }

      // Some better model found, find our new upper bound (undercutting current
      // best)
      bestModel = m;
      bestLatestTime = getIntValue(g, m.getValue(), g->latestTime);
      upperBound = bestLatestTime;
    }
    return bestModel;
  }

  static Optional<model> binarySearch(SMTConstraintGenerator *g,
                                      vector<Instruction *> instructions,
                                      int upperBound,
                                      int lowerBound) {

    Optional<model> bestModel;
    int bestLatestTime = upperBound;

    // Incrementally attempt to solve with a binary search between lower and
    // upper bounds
    while (true) {
      bestLatestTime = lowerBound + ((upperBound - lowerBound) / 2);

      cout << "Binary search with: [" << lowerBound << ", "  << bestLatestTime << ", "  << upperBound << "]\n";
      auto m = attemptPartitioningForGoal(g, instructions, bestLatestTime);

      // No model found, need to search larger values
      if (!m.hasValue()) {
        lowerBound = bestLatestTime;
      } else {
        // Some better model found, find our new upper bound (undercutting
        // current best)
        bestLatestTime = getIntValue(g, m.getValue(), g->latestTime);
        upperBound = bestLatestTime;
        bestModel = m;
      }

      if (upperBound - lowerBound < 2) {
        cout << "Binary search done at: " << bestLatestTime << "\n";
        break;
      }
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
    g->solver.add(partition < g->config.rows * g->config.columns);
    g->solver.add(0 <= startTime);

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
        if (i->getOpcode() != Instruction::PHI) {
          errs() << "No previous placement for: " << *operand << "\n";
        }
      } else {
        expr partition = g->context.int_val(previous->second.partition);
        opPartition = &partition;
      }

      expr endTime = g->context.int_val(0);
      opEndTime = &endTime;
    }

    // For now, pointers cannot be sent across partitions
    if (operand->getType()->isPointerTy() && opPartition != nullptr) {
      g->solver.add(currentPlacement.partition == *opPartition);
      g->solver.add(currentPlacement.startTime >= *opEndTime);
      return;
    }

    // Incorporate communication costs
    // TODO: for perf, this should build a lookup table
    if (opPartition != nullptr) {
      int comms = costForCommunication(g, currentPlacement.partition,
        *opPartition);
      g->solver.add(currentPlacement.startTime >= *opEndTime + comms);
    }
  }

  static void constrainOperand(SMTConstraintGenerator *g, Instruction *i,
    Value *operand) {

    // No constraints for constants or arguments
    if (isa<Constant>(operand) || isa<Argument>(operand)) {
      return;
    }

    // Incoming instructions require more complicated logic
    if (isa<Instruction>(operand)) {
      constrainInstructionOperand(g, i, (Instruction *)operand);
      return;
    }

    errs() << "unexpected operand:" << *operand << "\n";
  }

  static void constrainMemoryInstruction(SMTConstraintGenerator *g, Instruction *i,
    llvm::AliasSetTracker *ast) {
    if (dyn_cast<StoreInst>(i) || dyn_cast<LoadInst>(i)){
      g->solver.add(g->symbolicPlacements.at(i).partition == 0);
    }
  }

  static void constrainInstruction(SMTConstraintGenerator *g, Instruction *i,
    llvm::AliasSetTracker *ast) {
    // TODO Give each core its own equivalence class in the ast
    // For now, memory accesses need to live on partition 0
    constrainMemoryInstruction(g, i, ast);
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
        // Partitioning failed, for now, assign all to partition 0
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
    for (int x = 0; x < g->config.rows; x++) {
      for (int y = 0; y < g->config.columns; y++) {
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

  static int criticalPath(vector<Instruction *> instructions) {

    // Map from instructions to path costs
    map<Instruction *, int> pathCost;

    int longestPath = 0;

    for (Instruction *i : instructions) {

      int startCost = 0;
      for (const auto &op : i->operands()) {
        if (isa<Instruction>(op)) {
          Instruction *opPtr = cast<Instruction>(op);

          // Don't consider dependencies outside of this block
          if (pathCost.find(opPtr) == pathCost.end()) {
            continue;
          }

          if (pathCost[opPtr] > startCost) {
            startCost = pathCost[opPtr];
          }
        }
      }
      pathCost[i] = startCost + HyacinthCostModel::costForInstruction(i);
      // errs() << HyacinthCostModel::costForInstruction(i) << "\t" << pathCost[i] << "\ti: " << *i << "\n";
      if (pathCost[i] > longestPath) {
        longestPath = pathCost[i];
      }
    }

    return longestPath;
  }
};

SMTConstraintGenerator::SMTConstraintGenerator(SMTConfig c) : solver(context),
  latestTime(context.int_const("latestTime")),
  communicationCosts(z3::function("communicationCosts", context.int_sort(),
    context.int_sort(), context.int_sort())) {

  config = c;

  Internals::buildCommunicationCostTable(this);

  params p(context);
  p.set(":timeout", (unsigned)config.timeout);
  solver.set(p);
}

// Use SMT constraints to partition the current block's instructions,
// referencing the previous placement mappings as needed.
void SMTConstraintGenerator::partitionInstructionsInBlock(vector<Instruction *> instructions,
  llvm::AliasSetTracker *ast) {

  solver.push();

  // Create symbolic placements for each instruction
  int n = 0;
  for (Instruction *i : instructions) {
    Internals::constructSymbolicPlacements(this, i, n);
    n++;
  }

  for (Instruction *i : instructions) {
    Internals::constrainInstruction(this, i, ast);
  }

  auto mod = Internals::incremementalPartitioning(this, instructions);
  Internals::addConcretePlacements(this, mod);

  // Reset block-local solver state
  Internals::resetSolverState(this);
}

}
