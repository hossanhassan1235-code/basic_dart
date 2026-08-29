void main() {
  Student ali = Student('ali', 1, 'ali@email', 3);
  ali.display();
}

class Student {
  String? name;
  int? id;
  String? email;
  double? gpa;
  Student(String name, int id, String email, double gpa) {
    this.name = name;
    this.id = id;
    this.email = email;
    this.gpa = gpa;
  }
  void display() {
    print("Name: $name");
    print("ID: $id");
    print("Email: $email");
    print("GPA: $gpa");
  }
}
