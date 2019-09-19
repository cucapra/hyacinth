#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm-c/Core.h>

#include <iostream>
#include <iterator> 
#include <list> 
#include <map>
#include <z3.h>

#include "SMTConstraintGenerator.hpp"

using namespace llvm;
using namespace std;
using namespace SMTConstraints;

bool includeInstruction(Instruction *i) {
  return (i->getOpcode() != Instruction::Br);
}

bool isPrefix(string prefix, string s) {
  return prefix == s.substr(0, prefix.size());
}

// TODO: sort based on label
bool includeFunction(Function *f) {
  if (f->getName() == "main") {
    return false;
  }

  return isPrefix("_p_", f->getName());
}

vector<vector<Instruction *>> moduleToBlocksLists(Module &inputModule) {
  vector<vector<Instruction *>> instrsPerBlock;
  for (Function &f : inputModule) {
    if (!includeFunction(&f)) continue;

    for (BasicBlock &b : f) {
      vector<Instruction *> instrs;
      for (Instruction &i : b) {
        if (!includeInstruction(&i)) continue;
        instrs.push_back(&i);
      }
      instrsPerBlock.push_back(instrs);
    }
  }
  return instrsPerBlock;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    errs() << "Usage: " << argv[0] << " <IR file>\n";
    return 1;
  }

  // Parse the input IR file into a module
  SMDiagnostic err;
  LLVMContext context;
  std::unique_ptr<Module> inputModule = parseIRFile(argv[1], err, context);
  if (!inputModule) {
    err.print(argv[0], errs());
    return 1;
  }

  vector<vector<Instruction *>> blocksLists = moduleToBlocksLists(*inputModule);

  SMTConstraints::SMTConstraintGenerator generator;
  // auto generator = SMTConstraints::SMTConstraintGenerator(); // this does a copy!


  SMTConstraints::ConcretePlacementMap placements;

  for (vector<Instruction *> blocks : blocksLists) {
    placements = generator.partitionInstructionsInBlock(placements, blocks);
  }

  char* message;
  // inputModule->dump();
  LLVMPrintModuleToFile(wrap(inputModule.get()), "output.ll", &message);

  return 0;
}