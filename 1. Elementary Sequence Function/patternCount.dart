int patternCount(String text, String pattern) {
  int count = 0;
  int textLength = text.length;
  int patternLength = pattern.length;
  for (var i = 0; i < (textLength - patternLength + 1); i++) {
    print(text.substring(i, patternLength + i));
    if (text.substring(i, patternLength + i) == pattern) {
      count++;
    }
  }
  return count;
}
