class ValidParentheses {
  bool isValid(String s) {
    if (s.isEmpty) return true;
    if (s.length < 2) return false;
    if (s[0] == ')' || s[0] == '}' || s[0] == ']') return false;
    final map = {
      ')': '(',
      '}': '{',
      ']': '[',
    };
    final brackets = <String>[];
    for (int i = 0; i < s.length; i++) {
      if (map.containsValue(s[i])) {
        brackets.add(s[i]);
        continue;
      }
      if (brackets.isEmpty || brackets.removeLast() != map[s[i]]) {
        return false;
      }
    }
    return brackets.isEmpty;
  }
}

void main() {
  print(ValidParentheses().isValid('()[]{}'));
}
