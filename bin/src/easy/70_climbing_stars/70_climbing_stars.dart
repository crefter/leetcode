class ClimbingStars {
  int climbStairs(int n) {
    if (n <= 3) return n;
    var prev = 2;
    var cur = 3;
    for (int i = 3; i < n; i++) {
      int temp = cur;
      cur += prev;
      prev = temp;
    }

    return cur;
  }
}

void main() {
  print(ClimbingStars().climbStairs(5));
}
