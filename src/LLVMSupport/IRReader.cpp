#include <llvm/ADT/PostOrderIterator.h>
#include <llvm/IR/CFG.h>
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include "llvm/Transforms/Utils/Cloning.h"
#include <llvm-c/Core.h>

#include <iostream>
#include <iterator>
#include <list>
#include <map>
#include <z3.h>

#include "cxxopts.hpp"
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

    ReversePostOrderTraversal<llvm::Function *> traversal(&f);
    for (auto &b : traversal) {
      vector<Instruction *> instrs;
      for (Instruction &i : *b) {
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

  // Parse command line options
  cxxopts::Options options("hyacpp", "C++ partitioner for Hyacinth");
  options.add_options()
    ("d,debug", "Enable debugging")
    ("o,out", "Output file name",
      cxxopts::value<std::string>()->default_value("hyacpp_output"))
    ("r,rows", "Number of rows in the spatial configuration",
      cxxopts::value<int>()->default_value("2"))
    ("c,columns", "Number of columns in the spatial configuration",
      cxxopts::value<int>()->default_value("2"))
    ("t,timeout", "Timeout for SMT solve calls, in seconds",
      cxxopts::value<int>()->default_value("1000000"))
    ("s,strategy", "Incremental solving search strategy",
      cxxopts::value<std::string>()->default_value("linear"))
    ;

  auto result = options.parse(argc, argv);

  SMTConfig config;
  config.debug = result["d"].as<bool>();
  config.rows = result["r"].as<int>();
  config.columns = result["c"].as<int>();
  config.timeout = result["t"].as<int>();

  SMTConstraints::searchStrategies strategies;
  config.strategy = strategies[result["s"].as<string>()];

  string filename = result["o"].as<string>();

  // Parse the input IR file into a module
  SMDiagnostic err;
  LLVMContext context;
  std::unique_ptr<Module> inputModule = parseIRFile(argv[1], err, context);
  if (!inputModule) {
    err.print(argv[0], errs());
    return 1;
  }

  vector<vector<Instruction *>> blocksLists = moduleToBlocksLists(*inputModule);
  SMTConstraints::SMTConstraintGenerator generator(config);
  // auto generator = SMTConstraints::SMTConstraintGenerator(); // this does a copy!

  for (vector<Instruction *> block : blocksLists) {
    errs() << "Partitioning block\n";
    generator.partitionInstructionsInBlock(block);
  }

  // Write intermediate, partitioned module out
  char* message;
  string outputName = filename + "_intermediate.ll";
  LLVMPrintModuleToFile(wrap(inputModule.get()), outputName.c_str(), &message);
  errs() << message;

  // Clone module for host and device
  auto hostClone = CloneModule(*inputModule.get());
  auto deviceClone = CloneModule(*inputModule.get());

  return 0;
}