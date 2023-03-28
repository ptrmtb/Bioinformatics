void main() {
  print(countExpectedProbability([19314, 18739, 17383, 18831, 18821, 17770], 2));
}

double countExpectedProbability(List<int> data, int expectedOffspring) {
  List<double> constant = [1, 1, 1, 0.75, 0.5, 0];
  List<double> res = [];
  if (data.length == 6) {
    for (var i = 0; i < data.length; i++) {
      res.add(data[i] * constant[i] * expectedOffspring);
    }
  }
  return res.reduce(
    (value, element) => value + element,
  );
}
