void main() {
  print(prob(25, 23, 16));
}

String prob(int k, int m, int n) {
  int pop = k + m + n;
  var a = (k / pop) * ((k - 1) / (pop - 1));
  var b = (k / pop) * (m / (pop - 1));
  var c = (k / pop) * (n / (pop - 1));
  var d = (m / pop) * (k / (pop - 1));
  var e = 0.75 * (m / pop) * ((m - 1) / (pop - 1));
  var f = 0.5 * (m / pop) * (n / (pop - 1));
  var g = (n / pop) * (k / (pop - 1));
  var h = 0.5 * (n / pop) * (m / (pop - 1));
  return (a + b + c + d + e + f + g + h).toStringAsFixed(5);
}
