// Exercise 5

class Student {
  String name;
  List<int> marks;

  // Constructor for Student class
  Student(this.name, this.marks);

  // Method to find the average mark
  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0; // Return 0 if no marks are available
    }

    // Use the reduce method to calculate the sum of marks
    int totalMarks = marks.reduce((value, element) => value + element);

    // Calculate the average
    return totalMarks / marks.length;
  }
}

void main() {
  // Create a Student object
  Student student1 = Student('John Doe', [85, 90, 78, 95, 88]);

  // Display information about the student
  print("Information about ${student1.name}:");
  print("Marks: ${student1.marks}");

  // Calculate and display the average mark
  double averageMark = student1.calculateAverageMark();
  print("Average Mark: ${averageMark.toStringAsFixed(2)}");
}
