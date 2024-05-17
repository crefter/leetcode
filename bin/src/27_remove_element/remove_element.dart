class RemoveElement {
  int removeElement(List<int> nums, int val) {
    if (nums.isEmpty) return 0;
    if (nums.length < 2 && nums.first == val) {
      nums.remove(0);
      return 0;
    }
    if (nums.length < 2 && nums.first != val) {
      return 1;
    }
    var k = 0;
    for (var i = 0, j = nums.length - 1; i < nums.length; i++) {
      if (nums[i] != val) {
        k++;
      } else {
        while (nums[j] == val && j > 0) {
          j--;
        }
        if (i == j) continue;
        if (j == 0) continue;
        nums[i] = nums[j--];
      }
    }
    return k;
  }
}
