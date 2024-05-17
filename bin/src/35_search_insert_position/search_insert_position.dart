class SearchInsertPosition {
  int searchInsert(List<int> nums, int target) {
    int start = 0;
    int end = nums.length - 1;
    while (start <= end) {
      int mid = (end + start) ~/ 2;
      if (nums[mid] == target)
        return mid;
      else if (nums[mid] < target)
        start = mid + 1;
      else
        end = mid - 1;
    }
    return start;
  }
}

void main() {
  print(SearchInsertPosition().searchInsert([1, 3, 5, 6], 2));
}
