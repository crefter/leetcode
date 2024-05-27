class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return '$val, $next\n';
  }
}

class RemoveDuplicatedFromSortedlist {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null;
    if (head.next == null) return head;
    var lastVal = head.val;
    final fakeHead = ListNode(0, head);
    while (head?.next != null) {
      while (head?.next?.val == lastVal) {
        head?.next = head.next?.next;
      }
      lastVal = head?.next?.val ?? 0;
      if (head?.next == null) break;
      head = head!.next!;
    }
    return fakeHead.next!;
  }
}

void main() {
  var nodes = ListNode(
    1,
    ListNode(
      1,
      ListNode(
        2,
        ListNode(
          3,
          ListNode(3),
        ),
      ),
    ),
  );
  RemoveDuplicatedFromSortedlist().deleteDuplicates(nodes);
  print(nodes);
}
