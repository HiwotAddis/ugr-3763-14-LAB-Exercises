import 'dart:io';

void main() {
  print("Enter the lower bound of  range: ");
  int lowerBound = int.parse(stdin.readLineSync()!);

  print("Enter the upper bound of  range: ");
  int upperBound = int.parse(stdin.readLineSync()!);

  print("Prime numbers within the range $lowerBound to $upperBound:");

  for (int i = lowerBound; i <= upperBound; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
