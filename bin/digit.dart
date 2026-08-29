void main() {
  int input = 123;
  int sum = 0;
  while (input != 0) {
    int digit = input % 10;
    input = input ~/ 10;
    sum = sum + digit;
    print(sum);
  }
}
