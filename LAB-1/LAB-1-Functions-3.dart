// Exercise 3

import 'dart:io';

void main() {
  // Get user input for a string
  print("Enter a string:");
  String inputString = stdin.readLineSync()!;

  // Call the function to reverse the string
  String reversedString = reverseString(inputString);

  // Display the reversed string
  print("Reversed string: $reversedString");
}

String reverseString(String input) {
  // Function to reverse a string
  List<String> characters = input.split('');
  List<String> reversedCharacters = characters.reversed.toList();
  return reversedCharacters.join('');
}
