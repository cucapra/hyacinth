

#include "ReplaceArguments.hpp"

using namespace llvm;
using namespace std;
using namespace SMTConstraints;

namespace ReplaceArguments {

ReplaceArgumentsPass::ReplaceArgumentsPass(ConcretePlacementMap p,
  Module *hm, Module *dm) : placements(p), hostMd(hm), deviceMd(dm) {
}

// Replace arguments to partitioned functions with calls to receive from
// device code
void ReplaceArgumentsPass::replaceArguments() {
}


}