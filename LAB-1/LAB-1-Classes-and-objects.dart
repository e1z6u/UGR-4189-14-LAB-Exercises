// Exercise 1

class Person {
  String name;
  int age;
  String address;

  // Constructor to initialize the object with provided values
  Person(this.name, this.age, this.address);

  // Method to display information about the person
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  // Create objects of the Person class
  Person person1 = Person("Abebe Chala", 25, "123 Kidst St");
  Person person2 = Person("Kebede Tassa", 30, "456 Mariam St");

  // Access and display information about the first person
  print("Information about person1:");
  person1.displayInfo();

  // Access and display information about the second person
  print("\nInformation about person2:");
  person2.displayInfo();

  // Modify attributes of the first person
  person1.age = 26;
  person1.address = "789 Elm Blvd";

  // Display modified information about the first person
  print("\nUpdated information about person1:");
  person1.displayInfo();
}
