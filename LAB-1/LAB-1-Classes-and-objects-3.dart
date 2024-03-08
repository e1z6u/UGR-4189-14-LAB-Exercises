// Exercise 3

class Rectangle {
  double width;
  double height;

  // Constructor for Rectangle class
  Rectangle(this.width, this.height);

  // Method to calculate the area of the rectangle
  double calculateArea() {
    return width * height;
  }

  // Method to calculate the perimeter of the rectangle
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a Rectangle object
  Rectangle myRectangle = Rectangle(5.0, 8.0);

  // Display information about the rectangle
  print("Rectangle Information:");
  print("Width: ${myRectangle.width}");
  print("Height: ${myRectangle.height}");

  // Calculate and display the area and perimeter
  double area = myRectangle.calculateArea();
  double perimeter = myRectangle.calculatePerimeter();

  print("\nArea: $area square units");
  print("Perimeter: $perimeter units");
}
