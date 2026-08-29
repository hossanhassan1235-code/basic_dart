void main() {
  List<int> array = [3, 4, 8, 9, 12, 6];
  int even = 0;     
  for (int i = 0; i < array.length; i++) {
    if (array[i] % 2 == 0) {
      print(array[i]);
    }
  }
}
