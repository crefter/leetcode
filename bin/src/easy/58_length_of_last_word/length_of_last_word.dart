class LengthOfLastWord {
  int lengthOfLastWord(String s) {
    if (!s.contains(' ')) return s.length;
    int count = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == ' ') {
        if (count > 0) break;
        continue;
      }
      count++;
    }

    return count;
  }
}

void main() {
  print(LengthOfLastWord().lengthOfLastWord('Hello World'));
}
