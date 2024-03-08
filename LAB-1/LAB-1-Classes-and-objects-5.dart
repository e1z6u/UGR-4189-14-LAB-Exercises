// Exercise 5

import 'dart:math';

// Abstract Shape class
abstract class Shape {
  // Abstract method to calculate the area of the shape
  double calculateArea();
}

// Circle subclass
class Circle extends Shape {
  double radius;

  // Constructor for Circle class
  Circle(this.radius);

  // Implementation of the abstract method to calculate the area of the circle
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Square subclass
class Square extends Shape {
  double side;

  // Constructor for Square class
  Square(this.side);

  // Implementation of the abstract method to calculate the area of the square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create a Circle object
  Circle myCircle = Circle(5.0);

  // Create a Square object
  Square mySquare = Square(4.0);

  // Calculate and display the area of the circle
  print("Area of the Circle: ${myCircle.calculateArea().toStringAsFixed(2)} square units");

  // Calculate and display the area of the square
  print("Area of the Square: ${mySquare.calculateArea().toStringAsFixed(2)} square units");
}
