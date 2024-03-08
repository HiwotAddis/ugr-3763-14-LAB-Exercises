import 'dart:math';

void main() {
  List<int> randomNumbers = generateRandomNumbers(10);
  print("Random Numbers: $randomNumbers");

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  print("Unique Numbers: $uniqueNumbers");
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> randomNumbers = [];

  for (int i = 0; i < count; i++) {
    randomNumbers.add(random.nextInt(20));
  }

  return randomNumbers;
}
