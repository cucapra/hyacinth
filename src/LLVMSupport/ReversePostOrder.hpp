#pragma once

#include <llvm/IR/BasicBlock.h>

namespace ReversePostOrder {

std::vector<llvm::BasicBlock *> sortBasicBlocks(std::vector<llvm::BasicBlock *> blocks);

}