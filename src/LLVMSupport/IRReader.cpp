#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include <z3.h>

#include <list> 
#include <iterator> 
#include <map>

using namespace std; 
using namespace llvm;

bool includeInstruction(Instruction *I) {
  return (I->getOpcode() != Instruction::Br);
}

// TODO: sort based on label
bool includeFunction(Function *I) {
  return true;
}

vector<vector<Instruction *>> moduleToBlockLists(Module &InputModule) {
  vector<vector<Instruction *>> InstrsPerBlock;
  for (Function &F : InputModule) {
    if (!includeFunction(&F)) continue;

    for (BasicBlock &B : F) {
      vector<Instruction *> Instrs;
      InstrsPerBlock.push_back(Instrs);
      for (Instruction &I : B) {
        if (!includeInstruction(&I)) continue;

        Instrs.push_back(&I);
      }
    }
  }
  return InstrsPerBlock;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    errs() << "Usage: " << argv[0] << " <IR file>\n";
    return 1;
  }

  // Parse the input IR file into a module
  SMDiagnostic err;
  LLVMContext context;
  std::unique_ptr<Module> InputModule = parseIRFile(argv[1], err, context);
  if (!InputModule) {
    err.print(argv[0], errs());
    return 1;
  }

  auto l = moduleToBlockLists(*InputModule);

  return 0;
}