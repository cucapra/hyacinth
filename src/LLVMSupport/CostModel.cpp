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
    case Instruction::FDiv:
    case Instruction::SDiv:
    case Instruction::UDiv:
    case Instruction::Mul:
    case Instruction::FMul:
    case Instruction::URem:
    case Instruction::SRem:
      return 3;

    // Operations with large costs
    case Instruction::Call:
      return 30;

    default:
      return 1;
  }
  return 0;
}

static pair<int, int>components(int partition) {
  return make_pair(0, 0);
}

int HyacinthCostModel::costForCommunication(int partition1, int partition2) {
  // Manhattan distance: number of hops
  int x1, x2, y1, y2;
  tie(x1, y1) = components(partition1);
  tie(x2, y2) = components(partition2);

  return (abs(x1 - x2) + abs(y1 - y2)) * 20;
}