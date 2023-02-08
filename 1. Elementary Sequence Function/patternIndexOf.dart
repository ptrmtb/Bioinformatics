List patternIndexOf(String text, String pattern) {
  List list = [];
  int textLength = text.length;
  int patternLength = pattern.length;
  for (var i = 0; i < (textLength - patternLength + 1); i++) {
    if (text.substring(i, patternLength + i) == pattern) {
      list.add(i);
    }
  }
  return list;
}
