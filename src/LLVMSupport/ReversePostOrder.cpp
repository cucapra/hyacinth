#include "ReversePostOrder.hpp"

#include <set>

using namespace llvm;
using namespace std;

namespace ReversePostOrder {

void explore(vector<BasicBlock *> visited, set<BasicBlock *> path, 
    BasicBlock *node) {

    if (path.find(node) != path.end()
        || find(visited.begin(), visited.end(), node) != visited.end()) {
        return;
    }
    set<BasicBlock *> newPath = path;
    newPath.emplace(node);

    // Explore successors before this node
    auto i = node->getTerminator();
    for (unsigned s = 0, e = i->getNumSuccessors(); s != e; s++){
        auto succ = i->getSuccessor(s);
        explore(visited, newPath, succ);
    }

    // Push to the back, then reverse later
    visited.push_back(node);
}

vector<BasicBlock *> reversePostOrder(BasicBlock *start) {
    vector<BasicBlock *> visited;
    set<BasicBlock *> path;
    explore(visited, path, start);

    reverse(visited.begin(), visited.end());
    return visited;
}

vector<BasicBlock *> sortBasicBlocks(vector<BasicBlock *> blocks) {
    return blocks;
}

}