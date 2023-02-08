int patternCount(String text, String pattern) {
  int count = 0;
  int textLength = text.length;
  int patternLength = pattern.length;
  for (var i = 0; i < (textLength - patternLength + 1); i++) {
    if (text.substring(i, patternLength + i) == pattern) {
      count++;
    }
  }
  return count;
}

dynamic frequentWords(String text, int k) {
  Map<String, int> memo = {};
  
  for (var i = 0; i < (text.length-k+1); i++) {
    String currentSlidingText = text.substring(i, i+k);
    if (memo.containsKey(currentSlidingText)) {
      continue;
    } else {
      memo[currentSlidingText] = patternCount(text, currentSlidingText);
    }
  }
  var sortedByValueMap = Map.fromEntries(memo.entries.toList()..sort((e1, e2) => e2.value.compareTo(e1.value)));
  var sortedByValueList = [];
  memo.forEach((k,v) => sortedByValueList.add([k,v]));
  sortedByValueList.sort((a,b) => b[1].compareTo(a[1]));
  return sortedByValueList;
}
