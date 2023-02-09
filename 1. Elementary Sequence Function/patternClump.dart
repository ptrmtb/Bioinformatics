dynamic patternClump(
    String genome, int patternLength, int clumpWindow, int minimalOccurences) {
  List result = [];
  Map memo = {};
  for (var i = 0; i < (genome.length-clumpWindow+1); i++) {
    String currentSlidingWindow = genome.substring(i, i+clumpWindow);
    if (memo.containsKey(currentSlidingWindow)) {
      continue;
    } 
    List<dynamic> fitResult = frequentWords(currentSlidingWindow, patternLength).where((data) => data[1] >= minimalOccurences).toList();
    memo[currentSlidingWindow] = fitResult;
    if (fitResult == []) {
      continue;
    }
    for (var data in fitResult) {
      if (result.contains(data[0])) {
        continue;
      } else {
        result.add(data[0]);
      }
    }
  }
  return result;
}
