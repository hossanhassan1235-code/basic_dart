import 'dart:io';

void main() {
  List<int> array = [3, 4, 9, 8, 10];
  int search = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < array.length; i++) {
    if (search == array[i]) {
      print('index$i');
    }
  }
}
