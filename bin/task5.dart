class Teacher {
  String name;
  List<String> courses = [];

  Teacher(this.name);

  bool addCourse(String course) {
    if (!courses.contains(course)) {
      courses.add(course);
      return true;
    }
    return false;
  }

  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      return true;
    }
    return false;
  }
}
