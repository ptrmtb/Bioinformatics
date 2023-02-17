void main() {
  Stopwatch timer = Stopwatch();
  timer.start();
  print(fibonacciRabbit(35,4));
  timer.stop();
  print("Time elapsed: ${timer.elapsed}");
  timer.reset();
}

int fibonacciRabbit(int n, int k) {
  Map<int, int> memo = {};
  if (memo.containsKey(n)) {
    return memo[n]!;
  } else if (n < 3) {
    return 1;
  } else {
    memo[n] = fibonacciRabbit(n-1, k) + fibonacciRabbit(n-2, k)*k;
    return memo[n]!;
  }
}
