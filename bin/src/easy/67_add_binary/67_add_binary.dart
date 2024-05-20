class AddBinary {
  String addBinary(String a, String b) {
    if (a.isEmpty && b.isEmpty) return '';
    if (a.isEmpty) return b;
    if (b.isEmpty) return a;

    var result = '';
    var remainder = 0;
    var i = a.length - 1;
    var j = b.length - 1;

    while (i >= 0 || j >= 0 || remainder > 0) {
      if (i >= 0) remainder += int.tryParse(a[i--]) ?? 0;
      if (j >= 0) remainder += int.tryParse(b[j--]) ?? 0;
      switch (remainder) {
        case 0:
          result = '0$result';
        case 1:
          result = '1$result';
        case 2:
          result = '0$result';
        case 3:
          result = '1$result';
      }
      remainder = remainder ~/ 2;
    }

    return result;
  }
}

void main() {
  print(AddBinary().addBinary('1010', '1011'));
}
