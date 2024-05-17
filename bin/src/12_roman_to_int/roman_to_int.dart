const romanToInteger = {
  'I': 1,
  'V': 5,
  'X': 10,
  'L': 50,
  'C': 100,
  'D': 500,
  'M': 1000,
};

class RomanToInt {
  int romanToInt(String s) {
    if (s.isEmpty) return 0;
    if (s.length < 2) return romanToInteger[s]!;
    var result = 0;
    for (int i = 0; i < s.length; i++) {
      final current = romanToInteger[s[i]]!;
      if (i < s.length - 1 && current < romanToInteger[s[i + 1]]!) {
        result -= current;
      } else {
        result += current;
      }
    }
    return result;
  }
}

void main() {
  print(RomanToInt().romanToInt('MCMXCIV'));
}
