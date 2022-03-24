int cnt = 0;

void main() {
  fib(5);
  print("호출 횟수: ${cnt}");
}

int fib(int n) {
  if (n==1 || n==2) {
    cnt++;
    return 1;
  }
  else { 
    cnt++;
    return fib(n-1) + fib(n-2);
  }
}