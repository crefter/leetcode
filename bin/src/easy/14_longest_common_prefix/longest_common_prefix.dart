class LongestCommonPrefix {
  String longestCommonPrefix(List<String> strs) {
    var gen = '';
    if (strs.isEmpty) return gen;
    if (strs.length == 1) return strs.first;
    gen = strs.first;
    for (int i = 1; i < strs.length; i++) {
      final next = strs[i];
      if (next.isEmpty) return '';
      while (!next.startsWith(gen)) {
        gen = gen.substring(0, gen.length - 1);
        if (gen.isEmpty) return '';
      }
    }
    return gen;
  }
}

void main() {
  print(LongestCommonPrefix().longestCommonPrefix(["acc", "aaa", "aaba"]));
}
