class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class BinaryTeenInorderTraversal {
  List<int> inorderTraversal(TreeNode? root) {
    List<TreeNode> nodes = [];
    List<int> res = [];
    while (root != null || nodes.isNotEmpty) {
      while (root != null) {
        nodes.add(root);
        root = root.left;
      }
      root = nodes.last;
      res.add(root.val);
      root = root.right;
      nodes.removeLast();
    }
    return res;
  }
}

void main() {
  final nodes = TreeNode(
    1,
    null,
    TreeNode(
      2,
      TreeNode(
        3,
        TreeNode(
          4,
          TreeNode(
            5,
            TreeNode(
              6,
              TreeNode(7),
            ),
          ),
        ),
      ),
    ),
  );

  print(BinaryTeenInorderTraversal().inorderTraversal(nodes));
}
