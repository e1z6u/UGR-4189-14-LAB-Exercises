// Exercise 1

void main() {
  // Get user input for the number
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd using an if statement
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}
