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
