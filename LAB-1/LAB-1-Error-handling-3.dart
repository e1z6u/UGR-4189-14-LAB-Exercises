// Exercise 3

import 'dart:io';

void readFile(String filePath) {
  try {
    // Attempt to read the file
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();

    // Display the content of the file
    print("File content:");
    lines.forEach((line) => print(line));
  } catch (e) {
    // Catch FileSystemException and display an error message
    print("Error: $e");
  }
}

void main() {
  // Example usage
  print("Enter the path to a file:");
  String filePath = stdin.readLineSync()!;

  // Try reading the file
  readFile(filePath);
}
