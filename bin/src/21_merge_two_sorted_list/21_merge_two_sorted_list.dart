class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return '$val\n';
  }

  String toStringAll() {
    var str = toString();
    var nextNode = next;
    while (nextNode != null) {
      str += nextNode.toString();
      nextNode = nextNode.next;
    }
    return str;
  }
}

class MergeTwoSortedList {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null && list2 == null) return null;
    if (list1 == null) return list2;
    if (list2 == null) return list1;
    ListNode head = ListNode();
    ListNode tail = head;
    while (list1 != null && list2 != null) {
      if (list1.val < list2.val) {
        tail.next = ListNode(list1.val);
        list1 = list1.next;
      } else {
        tail.next = ListNode(list2.val);
        list2 = list2.next;
      }
      tail = tail.next!;
    }
    if (list1 != null) tail.next = list1;
    if (list2 != null) tail.next = list2;
    return head.next;
  }
}

void main() {
  final list1 = ListNode(1);
  list1.next = ListNode(3);
  final list2 = ListNode(1);
  list2.next = ListNode(2);
  list2.next?.next = ListNode(4);
  final all = MergeTwoSortedList()
          .mergeTwoLists(
            list1,
            list2,
          )
          ?.toStringAll() ??
      '';
  print(all);
}
