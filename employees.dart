class Employee {
  String name;
  double salary;
  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name, Salary: \$$salary');
  }
}

class Developer extends Employee {
  String programmingLanguage;
  Developer(String name, double salary, this.programmingLanguage)
    : super(name, salary);
  @override
  void displayInfo() {
    super.displayInfo();
    print('Role: Developer, Main Language: $programmingLanguage');
  }
}

class Designer extends Employee {
  String designTool;
  Designer(String name, double salary, this.designTool) : super(name, salary);
  @override
  void displayInfo() {
    super.displayInfo();
    print('Role: Designer, Preferred Tool: $designTool');
  }
}

void main() {
  Developer dev = Developer('mariam', 1200.0, 'Dart / Flutter');
  Designer des = Designer('shady', 1000.0, 'Figma');

  print('Developer Info');
  dev.displayInfo();

  print('\nDesigner Info');
  des.displayInfo();
}
