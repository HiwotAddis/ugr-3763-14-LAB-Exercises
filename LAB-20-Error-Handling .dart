void divideNumbers(int numerator, int denominator) {
  try {
    if (denominator == 0) {
      throw FormatException("Error: Division by zero is not allowed.");
    }
    double result = numerator / denominator;
    print("Result of division: $result");
  } catch (e) {
    print(e);
  }
}

void main() {
  divideNumbers(10, 2);
  divideNumbers(5, 0);
}
