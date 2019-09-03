#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Pass.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
// #include "z3++.h"

#include <list> 
#include <iterator> 
#include <map>

using namespace std; 
using namespace llvm;
// using namespace z3;

struct placement {
  int partition;
  int start_time;
  int end_time;
};

typedef std::map<Value *, placement> PlacementMap;

PlacementMap parititonDataFlorGraph(PlacementMap previous,
                                    vector<Value *> instructions) {
  // context c;
  // solver s(c);

  return previous;
}


vector<vector<Value *>> moduleToBlockList(Module &inputModule) {
  vector<vector<Value *>> instrsPerBlock;
  for (Function &f : inputModule) {
    vector<Value *> instrs;
    instrsPerBlock.push_back(instrs);
    for (BasicBlock &b : f) {
      instrs.push_back(&b);
    }
  }
  return instrsPerBlock;
}

int main(int argc, char **argv) {
  if (argc < 2) {
    errs() << "Usage: " << argv[0] << " <IR file>\n";
    return 1;
  }

  // Parse the input LLVM IR file into a module.
  SMDiagnostic err;
  LLVMContext context;
  std::unique_ptr<Module> inputModule = parseIRFile(argv[1], err, context);
  if (!inputModule) {
    err.print(argv[0], errs());
    return 1;
  }

  auto l = moduleToBlockList(*inputModule);

  return 0;
}