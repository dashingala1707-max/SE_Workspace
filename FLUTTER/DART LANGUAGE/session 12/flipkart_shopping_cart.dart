//Use a while loop in Dart to simulate a Flipkart-style shopping cart: starting
// with a list of 4 product names, print each product and remove it from the
// list one by one until the cart is empty.<br><br><em><strong>Hint:</strong>
// Use the removeAt(0) method to remove the first item in each iteration.</em>

import 'dart:io';

void main() {
  List<String> cart = [];

  // Taking 4 product names from the user
  for (int i = 0; i < 4; i++) {
    print("Enter product ${i + 1}:");
    String product = stdin.readLineSync()!;
    cart.add(product);
  }

  print("\nShopping Cart Simulation:");

  while (cart.isNotEmpty) {
    print("Product: ${cart[0]}");
    cart.removeAt(0);
  }

  print("\nCart is now empty.");
}