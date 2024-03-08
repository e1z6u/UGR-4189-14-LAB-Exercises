// Exercise 4

class Product {
  String name;
  double price;
  int quantity;

  // Constructor for Product class
  Product(this.name, this.price, this.quantity);

  // Method to calculate the total cost of the product
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a Product object
  Product myProduct = Product("Laptop", 1200.0, 3);

  // Display information about the product
  print("Product Information:");
  print("Name: ${myProduct.name}");
  print("Price: \$${myProduct.price}");
  print("Quantity: ${myProduct.quantity}");

  // Calculate and display the total cost
  double totalCost = myProduct.calculateTotalCost();
  print("\nTotal Cost: \$${totalCost.toStringAsFixed(2)}");
}
