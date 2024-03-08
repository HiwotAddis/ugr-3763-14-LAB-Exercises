import 'dart:io';

void main() {
  print("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter operation (+, -, *, /): ");
  String operation = stdin.readLineSync()!;

  print("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero.");
        return;
      }
      break;
    default:
      print("Error: Invalid operation.");
      return;
  }

  print("Result: $result");
}
