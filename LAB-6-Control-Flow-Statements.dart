import 'dart:io';

void main() {
  print("Enter grade (0-100): ");
  int grade = int.parse(stdin.readLineSync()!);

  String letterGrade;

  switch (grade ~/ 10) {
    case 10:
    case 9:
      letterGrade = 'A';
      break;
    case 8:
      letterGrade = 'B';
      break;
    case 7:
      letterGrade = 'C';
      break;
    case 6:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
      break;
  }

  print("Letter Grade: $letterGrade");
}
