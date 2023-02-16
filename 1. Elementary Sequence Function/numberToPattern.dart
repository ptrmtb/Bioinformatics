String numberToPattern(int index, int k) {
  if (k == 1) {
    return numberToSymbol(index);
  } else {
    int prefixIndex = index ~/ 4;
    int r = index % 4;
    String symbol = numberToSymbol(r);
    String prefixPattern = numberToPattern(prefixIndex, k - 1);
    return prefixPattern + symbol;
  }
}
