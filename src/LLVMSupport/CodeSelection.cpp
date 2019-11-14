#include "CodeSelection.hpp"

using namespace llvm;
using namespace std;

bool isPrefix(string prefix, string s) {
  return prefix == s.substr(0, prefix.size());
}

// TODO: actually implement this!
bool CodeSelection::includeFunction(Function *f) {
  if (f->getName() == "main") {
    return false;
  }

  // TODO: cannot be recursive, call instructions that aren't accessible, etc
  return isPrefix("_p_", f->getName());
}

bool CodeSelection::includeInstruction(Instruction *i) {
  return (i->getOpcode() != Instruction::Br);
}