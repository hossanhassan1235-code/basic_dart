class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  bool inSameMonth(Holiday other) {
    return this.month == other.month;
  }

  static double avgDate(List<Holiday> list) {
    int sum = 0;
    for (int i = 0; i < list.length; i++) {
      sum = sum + list[i].day;
    }
    return sum / list.length;
  }
}

void main() {
  Holiday h1 = Holiday('Independence Day', 4, 'July');
  Holiday h2 = Holiday('Another Holiday', 14, 'July');
  Holiday h3 = Holiday('Christmas', 25, 'December');

  print('Are h1 and h2 in the same month? ' + h1.inSameMonth(h2).toString());
  print('Are h1 and h3 in the same month? ' + h1.inSameMonth(h3).toString());

  List<Holiday> holidayList = [h1, h2, h3];
  double average = Holiday.avgDate(holidayList);
  print('Average of days: ' + average.toString());
}
