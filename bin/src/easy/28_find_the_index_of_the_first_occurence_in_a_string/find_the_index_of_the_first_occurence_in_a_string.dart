class FindTheIndexOfTheFirstOccurenceInAString {
  int strStr(String haystack, String needle) {
    if (haystack.isEmpty ||
        needle.isEmpty ||
        needle.length > haystack.length + 1) {
      return -1;
    }

    for (var i = 0; i <= haystack.length - needle.length; i++) {
      if (haystack.substring(i, i + needle.length) == needle) {
        return i;
      }
    }

    return -1;
  }
}

void main() {
  print(FindTheIndexOfTheFirstOccurenceInAString().strStr('dgfgsad', 'sad'));
}
