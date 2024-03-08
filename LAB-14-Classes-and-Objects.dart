import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle myCircle = Circle(20);
  Square mySquare = Square(10);

  print("Circle Area: ${myCircle.calculateArea()}");
  print("Square Area: ${mySquare.calculateArea()}");
}
