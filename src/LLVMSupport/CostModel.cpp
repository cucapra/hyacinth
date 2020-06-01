#include "CostModel.hpp"

using namespace llvm;
using namespace std;

int HyacinthCostModel::costForInstruction(Instruction *i) {
  // Default: operations have cost 1
  switch (i->getOpcode()) {
    // Operations with negligible cost
    case Instruction::Ret:
    case Instruction::Br:
    case Instruction::PHI:
    case Instruction::BitCast:
    case Instruction::Trunc:
    case Instruction::ZExt:
      return 0;

    // Operations with slightly more expensive costs
    case Instruction::FMul:
    case Instruction::FSub:
      return 2;

    // Operations with large costs
    case Instruction::FDiv:
    case Instruction::Call:
      return 30;

    default:
      return 1;
  }
  return 0;
}

static pair<int, int>components(int partition, int columns) {
  int q = partition % columns;
  int r = (partition - q) / columns;
  return make_pair(r, q);
}

int HyacinthCostModel::costForCommunication(int partition1, int partition2, int columns) {
  // Manhattan distance: number of hops
  int x1, x2, y1, y2;
  tie(x1, y1) = components(partition1, columns);
  tie(x2, y2) = components(partition2, columns);

  return abs(x1 - x2) + abs(y1 - y2);
}