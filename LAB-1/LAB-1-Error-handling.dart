// Exercise 1

void main() {
  try {
    // Get user input for a number
    print("Enter a number:");
    String userInput = stdin.readLineSync()!;

    // Convert the input to an integer
    int number = int.parse(userInput);

    // Display the converted number
    print("You entered: $number");
  } catch (e) {
    // Handle FormatException if the input is not a valid number
    print("Error: $e");
  }
}
