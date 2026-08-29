void main() {
  int input = 123;
  int rev = 0;
  while (input != 0) {
    int digit = input % 10;
    input = input ~/ 10;
    rev = rev * 10 + digit;
    print(rev);
  }
}
