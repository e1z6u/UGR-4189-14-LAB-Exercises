// Exercise 2

import 'dart:io';

void main() {
  // Get user input for the range
  print("Enter the starting number of the range:");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter the ending number of the range:");
  int end = int.parse(stdin.readLineSync()!);

  // Check for prime numbers within the specified range
  print("Prime numbers within the range $start to $end are:");
  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  // Function to check if a number is prime
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
