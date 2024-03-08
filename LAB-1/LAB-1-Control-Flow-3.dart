// Exercise 3

import 'dart:io';

void main() {
  // Get user input for operation
  print("Enter an operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  // Get user input for two numbers
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  // Perform the calculation based on the selected operation
  double result = 0.0;
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
        print("Error: Division by zero is not allowed.");
        return;
      }
      break;
    default:
      print("Error: Invalid operation.");
      return;
  }

  // Display the result
  print("Result: $result");
}
