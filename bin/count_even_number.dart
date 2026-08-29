class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  bool inSameMonth(Holiday other) {
    return this.month == other.month;
  }

  static double avgDate(List<Holiday> holidays) {
    int sum = 0;
    for (int i = 0; i < holidays.length; i++) {
      sum = sum + holidays[i].day;
    }
    return sum / holidays.length;
  }
}

void main() {
  Holiday h1 = Holiday('Independence Day', 4, 'July');
  Holiday h2 = Holiday('Christmas', 25, 'December');
  Holiday h3 = Holiday('New Year', 1, 'January');

  print(h1.inSameMonth(h2));

  List<Holiday> list = [h1, h2, h3];
  double avg = Holiday.avgDate(list);
  print('Average day: $avg');
}
