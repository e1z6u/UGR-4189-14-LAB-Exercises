// Exercise 4

import 'dart:io';

void main() {
  // Initialize the shopping cart as a map with product names and quantities
  Map<String, int> shoppingCart = {};

  // Display available products
  print("Available Products:");
  print("1. Laptop - \$1000");
  print("2. Smartphone - \$500");
  print("3. Headphones - \$50");
  print("4. Keyboard - \$80");
  print("5. Exit");

  // Start shopping loop
  while (true) {
    // Get user input for product selection
    print("\nEnter the product number to add to the cart (or '5' to exit):");
    int productNumber = int.parse(stdin.readLineSync()!);

    if (productNumber == 5) {
      // Exit the shopping loop
      break;
    } else if (productNumber >= 1 && productNumber <= 4) {
      // Add the selected product to the cart
      String productName = getProductInfo(productNumber)['name'];
      int quantity = getProductQuantity();

      // Update the shopping cart
      shoppingCart[productName] = quantity;

      // Display the updated cart
      print("\nShopping Cart:");
      printCart(shoppingCart);
    } else {
      print("Invalid product number. Please enter a number between 1 and 5.");
    }
  }

  // Calculate and display the total price
  double totalPrice = calculateTotalPrice(shoppingCart);
  print("\nTotal Price: \$${totalPrice.toStringAsFixed(2)}");
}

Map<String, dynamic> getProductInfo(int productNumber) {
  // Return product information based on the product number
  switch (productNumber) {
    case 1:
      return {'name': 'Laptop', 'price': 1000};
    case 2:
      return {'name': 'Smartphone', 'price': 500};
    case 3:
      return {'name': 'Headphones', 'price': 50};
    case 4:
      return {'name': 'Keyboard', 'price': 80};
    default:
      return {};
  }
}

int getProductQuantity() {
  // Get user input for the quantity of the selected product
  print("Enter the quantity:");
  return int.parse(stdin.readLineSync()!);
}

double calculateTotalPrice(Map<String, int> cart) {
  // Calculate the total price based on the items in the cart
  double totalPrice = 0.0;
  for (var entry in cart.entries) {
    Map<String, dynamic> productInfo = getProductInfoByName(entry.key);
    totalPrice += productInfo['price'] * entry.value;
  }
  return totalPrice;
}

Map<String, dynamic> getProductInfoByName(String productName) {
  // Return product information based on the product name
  switch (productName) {
    case 'Laptop':
      return {'name': 'Laptop', 'price': 1000};
    case 'Smartphone':
      return {'name': 'Smartphone', 'price': 500};
    case 'Headphones':
      return {'name': 'Headphones', 'price': 50};
    case 'Keyboard':
      return {'name': 'Keyboard', 'price': 80};
    default:
      return {};
  }
}

void printCart(Map<String, int> cart) {
  // Display the items and quantities in the shopping cart
  if (cart.isEmpty) {
    print("The cart is empty.");
  } else {
    cart.forEach((productName, quantity) {
      Map<String, dynamic> productInfo = getProductInfoByName(productName);
      double totalPrice = productInfo['price'] * quantity;
      print("$productName (Quantity: $quantity) - \$${totalPrice.toStringAsFixed(2)}");
    });
  }
}
