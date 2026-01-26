class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  bool inSameMonth(Holiday other) {
    if (month == other.month) {
      return true;
    } else {
      return false;
    }
  }

  static double avgDate(List<Holiday> holidays) {
    double sum = 0;

    for (int i = 0; i < holidays.length; i++) {
      sum += holidays[i].day;
    }

    double average = sum / holidays.length;
    return average;
  }

  void displayInfo() {
    print('Holiday: $name');
    print('Date: $month $day');
  }
}