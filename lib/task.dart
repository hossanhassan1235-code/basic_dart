void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print('$i is even');
    } else {
      print('$i is odd');
    }
  }
}

void task1() {
  List<int> numbers = [10, -5, 0, 8, -3, 15, 7, -9];
  int positivecount = 0;
  int negativecount = 0;
  int zerocount = 0;
  for (int number in numbers) {
    if (number > 0) {
      positivecount++;
    } else if (number < 0) {
      negativecount++;
    } else {
      zerocount++;
      print('positivenumbers: $positivecount');
      print('negativenumbers: $negativecount');
      print('zeronumbers: $zerocount');
    }
  }
}

void task2() {
  List<int> grades = [95, 82, 67, 45, 78, 99, 58];
  for (int grade in grades) {
    if (grade >= 60) {
      print('$grade: passed');
    } else {
      print('$grade: failed');
    }
  }
}
