#pragma once

#include <llvm/IR/Instruction.h>

namespace HyacinthCostModel {

int costForInstruction(llvm::Instruction *i);
int costForCommunication(int partition1, int partition2, int columns);

}