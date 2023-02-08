String countGCAT(String sequence) {
  Map<String, int> nuc = {"C": 0, "G": 0, "A": 0, "T": 0};
  for (var i = 0; i < sequence.length; i++) {
    nuc.update(sequence[i], (value) => value+1);
  }
  String resultString = "${nuc["A"]} ${nuc["C"]} ${nuc["G"]} ${nuc["T"]}";
  return resultString;
}
