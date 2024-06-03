class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class SameTree {
  bool isSameTree(TreeNode? p, TreeNode? q) {
    if (p == null && q == null) return true;
    if (p == null || q == null) return false;

    return p.val == q.val &&
        isSameTree(p.left, q.left) &&
        isSameTree(p.right, q.right);
  }
}

void main() {
  final p = TreeNode(1, TreeNode(2), TreeNode(3));
  final q = TreeNode(1, TreeNode(2), TreeNode(3));
  print(SameTree().isSameTree(p, q));
}
