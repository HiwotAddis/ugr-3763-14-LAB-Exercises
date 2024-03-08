void main() {
  Map<String, int> studentMarks = {};
  studentMarks.putIfAbsent("Hiwot", () => 90);
  studentMarks.putIfAbsent("Addis", () => 85);

  studentMarks.forEach((name, marks) {
    print("$name: $marks");
  });

  String studentToCheck = "Hiwot";
  if (studentMarks.containsKey(studentToCheck)) {
    print("$studentToCheck's marks: ${studentMarks[studentToCheck]}");
  } else {
    print("$studentToCheck not found in the student marks list");
  }
}
