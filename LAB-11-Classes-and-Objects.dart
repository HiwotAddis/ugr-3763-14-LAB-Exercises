class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    return marks.reduce((value, element) => value + element);
  }

  double calculateAverageMarks() {
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  Student student1 =
      Student("Hiwot", 21, "Addis Ababa", 28, [85, 90, 78, 92, 88]);

  student1.displayInfo();
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");
  print("Total Marks: ${student1.calculateTotalMarks()}");
  print("Average Marks: ${student1.calculateAverageMarks()}");
}
