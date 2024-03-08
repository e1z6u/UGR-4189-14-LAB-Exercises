// Exercise 3

void main() {
  // Create a Map to store student names and marks
  Map<String, int> studentMarks = {
    'John': 85,
    'Alice': 92,
    'Bob': 78,
    'Eva': 95,
  };

  // Display the initial map
  print("Initial Student Marks:");
  printMap(studentMarks);

  // Add a new entry using putIfAbsent
  studentMarks.putIfAbsent('Charlie', () => 88);
  print("\nAfter adding a new entry:");
  printMap(studentMarks);

  // Iterate over the map using forEach
  print("\nIterating over the map:");
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });

  // Check if a specific entry exists using containsKey
  String studentNameToCheck = 'Alice';
  print("\nDoes the map contain entry for $studentNameToCheck? ${studentMarks.containsKey(studentNameToCheck)}");
}

void printMap(Map<String, int> map) {
  map.forEach((name, mark) {
    print('$name: $mark');
  });
}
