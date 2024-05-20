class RemoveDuplicatesFromSortedArray {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;
    if (nums.length < 2) return 1;
    int count = 1;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[count] = nums[i];
        count++;
      }
    }
    print(nums);
    return count;
  }
}

void main() {
  print(
    RemoveDuplicatesFromSortedArray()
        .removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]),
  );
}
