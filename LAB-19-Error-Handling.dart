import 'dart:io';

void main() {
  try {
    print("Enter a number: ");
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);

    print("Converted number: $number");
  } catch (e) {
    print("Error: Invalid input. Please enter a valid number.");
  }
}
