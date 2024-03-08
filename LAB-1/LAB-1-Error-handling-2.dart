// Exercise 2

double divideNumbers(double numerator, double denominator) {
  try {
    // Attempt to perform the division
    return numerator / denominator;
  } catch (e) {
    // Catch DivisionByZeroError and display an error message
    print("Error: $e");
    return double.nan; // Return a NaN (Not a Number) value as a placeholder
  }
}

void main() {
  // Example usage
  double result;

  // Try dividing two numbers
  result = divideNumbers(10.0, 2.0);
  print("Result: $result");

  // Attempt to divide by zero
  result = divideNumbers(5.0, 0.0);
  print("Result: $result");  // This will print an error message due to DivisionByZeroError
}
