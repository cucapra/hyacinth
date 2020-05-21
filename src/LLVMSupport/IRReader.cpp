#include "llvm/ADT/PostOrderIterator.h"
#include <llvm/Analysis/AliasSetTracker.h>
#include <llvm/IR/CFG.h>
#include <llvm/IR/LegacyPassManager.h>
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
#include "CodeSelection.hpp"
#include "CloneAndReplaceArguments.hpp"
#include "SMTConstraintGenerator.hpp"

using namespace llvm;
using namespace std;
using namespace SMTConstraints;

AliasSetTracker* getAliasSet(Module &inputModule, Function& F) {
  legacy::FunctionPassManager* FPM = new legacy::FunctionPassManager(&inputModule);
  FunctionPass *aaPass = createAAResultsWrapperPass();
  FPM->add(aaPass);
  FPM->run(F);
  AliasAnalysis &AA = ((AAResultsWrapperPass *)aaPass)->getAAResults();
  AliasSetTracker *ast = new AliasSetTracker(AA);
  for (BasicBlock &b : F){
    ast->add(b);
  }
  return ast;
}

void partitionInstructionsInModule(Module &inputModule, SMTConstraints::SMTConstraintGenerator &generator) {
  for (Function &f : inputModule) {
    if (!CodeSelection::includeFunction(&f)) continue;
    ReversePostOrderTraversal<llvm::Function *> traversal(&f);
    AliasSetTracker *ast = getAliasSet(inputModule, f);
    for (auto &b : traversal) {
      vector<Instruction *> block;
      for (Instruction &i : *b) {
        if (!CodeSelection::includeInstruction(&i)) continue;
        block.push_back(&i);
      }

      errs() << "Partitioning block\n";
      generator.partitionInstructionsInBlock(block, ast);
    }
  }
  return;
}

void declareFunctionsFromModule(string moduleName, Module *to) {
  SMDiagnostic err;
  std::unique_ptr<Module> from = parseIRFile(moduleName, err, to->getContext());
  if (!from) {
    err.print(moduleName.c_str(), errs());
    return;
  }

  for (Function &f : *from) {
    Function::Create(f.getFunctionType(), Function::ExternalLinkage,
      f.getName(), to);
  }
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
      cxxopts::value<std::string>()->default_value("binary"))
    ;

  auto result = options.parse(argc, argv);

  SMTConfig config;
  config.debug = result["d"].as<bool>();
  config.rows = result["r"].as<int>();
  config.columns = result["c"].as<int>();
  config.timeout = result["t"].as<int>();

  errs() << "Partitioning with "
         << config.rows  << " rows, "
         << config.columns  << " columns, "
         << config.timeout << "s timeout.\n";

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

  SMTConstraints::SMTConstraintGenerator generator(config);
  // auto generator = SMTConstraints::SMTConstraintGenerator(); // this does a copy!

  partitionInstructionsInModule(*inputModule, generator);

  // Write intermediate, partitioned module out
  char* message;
  string outputName = filename + "_intermediate.ll";
  LLVMPrintModuleToFile(wrap(inputModule.get()), outputName.c_str(), &message);

  // Clone module for host and device
  auto hostClone = CloneModule(*inputModule);
  auto deviceClone = CloneModule(*inputModule);

  // Import communications code from headers
  declareFunctionsFromModule("src/bsg_manycore/bsg-device-communication-skeleton.ll",
    deviceClone.get());
  declareFunctionsFromModule("src/bsg_manycore/bsg-host-communication-skeleton.ll",
    hostClone.get());

  Module *commsMd = new Module(filename + "_comms.ll", context);
  CloneAndReplaceArguments::CloneAndReplaceArguments replaceArgs(generator.previousPlacements,
    hostClone.get(), deviceClone.get(), commsMd);
  replaceArgs.replaceArguments();

  // Write device module out
  outputName = filename + "_device.ll";
  LLVMPrintModuleToFile(wrap(deviceClone.get()), outputName.c_str(), &message);

  // Write host module out
  outputName = filename + "_host.ll";
  LLVMPrintModuleToFile(wrap(hostClone.get()), outputName.c_str(), &message);

  // Write host module out
  outputName = filename + "_comms.ll";
  LLVMPrintModuleToFile(wrap(commsMd), outputName.c_str(), &message);

  return 0;
}