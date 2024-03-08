import 'dart:io';

void main() {
  print("Enter a string: ");
  String inputString = stdin.readLineSync()!;

  String reversedString = reverseString(inputString);
  print("Reversed string: $reversedString");
}

String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join();
}
