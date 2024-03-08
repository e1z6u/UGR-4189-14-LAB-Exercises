// Exercise 1

import 'dart:io';

void main() {
  // Get user input for two numbers
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  // Call the function to calculate the sum
  double sumResult = calculateSum(num1, num2);

  // Display the result
  print("The sum of $num1 and $num2 is: $sumResult");
}

double calculateSum(double num1, double num2) {
  // Function to calculate the sum of two numbers
  return num1 + num2;
}
