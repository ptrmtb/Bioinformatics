void main() async {
  List<String> test2 = generatePatterns(6);
  Stopwatch timer = Stopwatch();
  timer.start();
  print(test2);
  print(test2.length);
  timer.stop();
  print("Time elapsed: ${timer.elapsed}");
  timer.reset();
}

List<String> generatePatterns(int kmer) {
  List<String> nucleotides = ["C", "G", "A", "T"];
  List<String> res = [];
  if (kmer < 1) {
    return [];
  } else if (kmer == 1) {
    return nucleotides;
  } else {
    List<String> subSequences = generatePatterns(kmer-1);
    for (String seq in subSequences) {
      for (String nuc in nucleotides) {
        res.add(seq+nuc);
      }
    }
  }
  return res;
}
