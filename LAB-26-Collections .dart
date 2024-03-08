class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      print("No marks available for $name.");
      return 0.0;
    }
    int sumOfMarks = marks.reduce((value, element) => value + element);

    double averageMark = sumOfMarks / marks.length;

    return averageMark;
  }
}

void main() {
  Student student1 = Student("Hiwot Addis", [85, 90, 78, 92, 88]);

  double averageMark = student1.calculateAverageMark();
  print("${student1.name}'s Average Mark: $averageMark");
}
