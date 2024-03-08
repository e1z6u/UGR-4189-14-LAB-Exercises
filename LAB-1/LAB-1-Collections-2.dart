// Exercise 2

import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = generateRandomNumbers(20);

  // Display the original list
  print("Original List:");
  printList(randomNumbers);

  // Use a Set to remove duplicate elements
  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);

  // Display the list with duplicate elements removed
  print("\nUnique Numbers:");
  printList(uniqueNumbers.toList());
}

List<int> generateRandomNumbers(int count) {
  // Generate a list of random numbers between 1 and 50
  Random random = Random();
  List<int> numbers = List.generate(count, (index) => random.nextInt(50) + 1);
  return numbers;
}

void printList(List<int> list) {
  for (int number in list) {
    print(number);
  }
}
