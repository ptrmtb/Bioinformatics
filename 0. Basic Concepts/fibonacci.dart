void main() {
  print(fibonacci(20));
}

int fibonacci(int n) {
  Map<int, int> memo = {};
  if (memo.containsKey(n)) {
    return memo[n]!;
  } else if (n == 0) {
    return 0;
  } else if (n < 2) {
    return 1;
  } else {
    memo[n] = fibonacci(n - 2) + fibonacci(n - 1);
    return memo[n]!;
  }
}
