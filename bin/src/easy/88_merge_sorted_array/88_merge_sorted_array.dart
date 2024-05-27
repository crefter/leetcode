class MergeSortedArray {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if (m == 0 && n == 0) return;
    if (n == 0) return;

    var j = n - 1;
    var i = m - 1;
    var k = m + n - 1;

    while (j >= 0) {
      if (i >= 0 && nums1[i] > nums2[j]) {
        nums1[k] = nums1[i];
        i--;
      } else {
        nums1[k] = nums2[j];
        j--;
      }
      k--;
    }
  }
}

void main() {
  final nums1 = [0];
  final nums2 = [1];

  MergeSortedArray().merge(nums1, 0, nums2, nums2.length);
  print(nums1);
}

/// last = 1
/// 1 2 5 8 0 0 0
/// 2 6 7
///
/// last = 5
/// 1 2 2 8 0 0 0
/// 6 7
///
/// last = 8
/// 1 2 2 5 0 0 0
/// 6 7
///
/// last = 8
/// 1 2 2 5 6 0 0
/// 7
///
/// last = 8
/// 1 2 2 5 6 7 0
///
/// 1 2 2 5 6 7 8
