int memoFibonacci(int n, Map<int,int> memo){
  if (memo.containsKey(n)){
    return memo[n]!;
  }
  if (n < 2){
    return n;
  }
  else {
    memo[n] = memoFibonacci(n-1,memo) + memoFibonacci(n-2, memo);
    return memo[n]!;
  }
}

void main() {
  Stopwatch watch = Stopwatch();
  watch.start();
  print(fibonacci(43));
  watch.stop();
  print("fibonacci took ${watch.elapsed}");

  watch.reset();
  
  Map<int,int> myCache = {};

  watch.start();
  print(memoFibonacci(200, myCache));
  watch.stop();
  print("memoFibonacci took ${watch.elapsed}");
