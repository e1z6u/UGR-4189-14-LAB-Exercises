// Exercise 4

import 'dart:io';

void main() {
  // Get user input for the numeric grade
  print("Enter your numeric grade:");
  double numericGrade = double.parse(stdin.readLineSync()!);

  // Convert numeric grade to letter grade using a switch statement
  String letterGrade = getLetterGrade(numericGrade);

  // Display the corresponding letter grade
  print("Your letter grade is: $letterGrade");
}

String getLetterGrade(double numericGrade) {
  String letterGrade;

  switch (numericGrade ~/ 10) {
    case 10:
    case 9:
      letterGrade = 'A';
      break;
    case 8:
      letterGrade = 'B';
      break;
    case 7:
      letterGrade = 'C';
      break;
    case 6:
      letterGrade = 'D';
      break;
    default:
      letterGrade = 'F';
  }

  return letterGrade;
}
