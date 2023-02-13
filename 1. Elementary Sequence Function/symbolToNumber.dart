void main() async {
  Stopwatch timer = Stopwatch();
  print(generatePatterns(2));
  timer.start();
  print(patternToNumber("ATGCAA"));
  timer.stop();
  print('Time elapsed: ${timer.elapsed}');
  timer.reset();
  
  timer.start();
  print(symbolToNumber("ATGCAA"));
  timer.stop();
  print('Time elapsed: ${timer.elapsed}');
  timer.reset();
}

int symbolToNumber(String symbol) {
  List<String> indexNucleotide = ["A", "C", "G", "T"];
  if (symbol.isEmpty) {
    return 0;
  } else if (symbol.length == 1) {
    return indexNucleotide.indexOf(symbol);
  } else {
    return (4 * symbolToNumber(symbol.substring(0, symbol.length-1))) + symbolToNumber(symbol[symbol.length-1]);
  }
}
