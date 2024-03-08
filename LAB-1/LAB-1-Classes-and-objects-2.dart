// Exercise 2

class Person {
  String name;
  int age;
  String address;

  // Constructor for Person class
  Person(this.name, this.age, this.address);

  // Method to display information about the person
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  // Constructor for Student class, extending Person class
  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  // Method to calculate total marks
  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  // Method to calculate average marks
  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0.0;
    }
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  // Create a Student object
  Student student1 = Student("John Alex", 20, "123 Kidst St", 101, [85, 90, 78, 95, 88]);

  // Display information about the student
  print("Information about student1:");
  student1.displayInfo();

  // Calculate and display total marks and average marks
  int totalMarks = student1.calculateTotalMarks();
  double averageMarks = student1.calculateAverageMarks();

  print("\nTotal Marks: $totalMarks");
  print("Average Marks: ${averageMarks.toStringAsFixed(2)}");
}
