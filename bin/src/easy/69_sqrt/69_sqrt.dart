class Sqrt {
  int mySqrt(int x) {
    if (x == 0) return 0;
    if (x <= 3) return 1;
    int a = 2;
    while (a * a <= x) {
      a++;
    }
    return a - 1;
  }
}

void main() {
  print(Sqrt().mySqrt(9));
}
