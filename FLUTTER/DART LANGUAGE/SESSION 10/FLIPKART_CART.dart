//Build a Dart snippet that simulates a Flipkart-style cart: given three product
// prices (as variables), calculate and print the total, then apply a 10%
// discount if the total is above 1000. Display the final amount with a message
// using string interpolation.<br><br><em><strong>Hint:</strong> Use arithmetic
// and relational operators to check the discount condition.</em>

import 'dart:io';

void main() {
  // Taking product prices as input
  print("Enter price of Product 1:");
  double product1 = double.parse(stdin.readLineSync()!);

  print("Enter price of Product 2:");
  double product2 = double.parse(stdin.readLineSync()!);

  print("Enter price of Product 3:");
  double product3 = double.parse(stdin.readLineSync()!);

  // Calculating total amount
  double total = product1 + product2 + product3;

  // Checking discount eligibility
  if (total > 1000)
  {
    double discount = total * 10 / 100;
    double finalAmount = total - discount;

    print("\nCart Total: ₹$total");
    print("Discount Applied (10%): ₹$discount");
    print("Final Amount to Pay: ₹$finalAmount");
  } else
  {
    print("\nCart Total: ₹$total");
    print("No discount applied.");
    print("Final Amount to Pay: ₹$total");
  }
}