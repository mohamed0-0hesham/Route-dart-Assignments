import 'Person.dart';

class Teacher extends Person {
  List<String> courses = [];

  Teacher(String name, String address) : super(name, address);

  int get numCourses => courses.length;

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }
    courses.remove(course);
    return true;
  }

  @override
  String toString() {
    return "Teacher: ${super.toString()}";
  }
}