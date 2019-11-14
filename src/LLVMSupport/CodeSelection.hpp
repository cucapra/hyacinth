#pragma once

#include <llvm/IR/Instruction.h>
#include <llvm/IR/Function.h>

namespace CodeSelection {

// TODO: sort based on label
bool includeFunction(llvm::Function *f);
bool includeInstruction(llvm::Instruction *i);

}