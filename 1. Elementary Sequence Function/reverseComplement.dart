String reverseComplement(String sequence) {
  Map<String, String> reverseComplementMap = {"C": "G", "G": "C", "A":"T", "T":"A"};
  List newList = [];
  
  for (var i = 0; i < sequence.length; i++) {
    newList.insert(0, reverseComplementMap[sequence[i]]!);
  }
  
  String newString = newList.join();
  return newString;
}
