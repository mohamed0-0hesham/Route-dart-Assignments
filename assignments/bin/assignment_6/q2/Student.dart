import 'Person.dart';

class Student extends Person {
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  int get numCourses => courses.length;

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print("${courses[i]}: ${grades[i]}");
    }
  }

  double getAverageGrades() {
    if (grades.isEmpty) return 0.0;

    int sum = 0;
    for (var grade in grades) {
      sum += grade;
    }
    return sum / grades.length;
  }

  @override
  String toString() {
    return "Student: ${super.toString()}";
  }
}
