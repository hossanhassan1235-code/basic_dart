class Human {
  late int _numofArms;
  String name;
  Human(this.name) {
    _numofArms = 2;
  }
  void setNumberofArms(int numofArms) {
    if(numofArms >= 0 && numofArms <= 2) {
      _numofArms = numofArms;
    }
  }

  int getNumberofArms() {
    return _numofArms;
  }
}



///Developer name; id ; salary; age; fromwark; view() ; calculatesalary(25%).
///Accountnt name; id ; salary; age; fromwark; view() ; calculatesalary(10%).
///manger name; id ; salary; age; fromwark; view() ; calculatesalary(90%).