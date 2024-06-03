class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val = 0, this.left, this.right]);
}

class SymmetricTree {
  bool isSymmetric(TreeNode? root) {
    List<TreeNode> leftNodes = [];
    List<TreeNode> rightNodes = [];
    var left = root?.left;
    var right = root?.right;

    if (left?.val != right?.val) {
      return false;
    }

    while ((left != null && right != null) ||
        (leftNodes.isNotEmpty && rightNodes.isNotEmpty)) {
      while (left != null && right != null && (left.val == right.val)) {
        leftNodes.add(left);
        rightNodes.add(right);
        left = left.left;
        right = right.right;
      }

      if ((left?.left == null && right?.right != null) ||
          (right?.right == null && left?.left != null)) {
        return false;
      }

      if (left?.val != right?.val) return false;

      left = leftNodes.last;
      left = left.right;
      right = rightNodes.last;
      right = right.left;
      leftNodes.removeLast();
      rightNodes.removeLast();
    }

    if (left?.val != right?.val) return false;

    return true;
  }
}

void main() {
  final root = TreeNode(
    6,
    TreeNode(
      -4,
      TreeNode(
        -53,
        null,
        TreeNode(
          17,
          TreeNode(-50),
          TreeNode(-93),
        ),
      ),
      null,
    ),
    TreeNode(
      -4,
      null,
      TreeNode(
        -53,
        TreeNode(
          15,
          TreeNode(-93),
          TreeNode(-50),
        ),
        null,
      ),
    ),
  );
  // final root = TreeNode(
  //   2,
  //   TreeNode(
  //     3,
  //     TreeNode(
  //       4,
  //       null,
  //       TreeNode(6),
  //     ),
  //     TreeNode(
  //       5,
  //       TreeNode(8),
  //       TreeNode(9),
  //     ),
  //   ),
  //   TreeNode(
  //     3,
  //     TreeNode(
  //       5,
  //       TreeNode(9),
  //       TreeNode(8),
  //     ),
  //     TreeNode(
  //       4,
  //       TreeNode(6),
  //       null,
  //     ),
  //   ),
  // );
  print(SymmetricTree().isSymmetric(root));
}
