//Refactor this Dart code by extracting the repeated calculation into a separate
// function: three different Zomato order totals are each calculated as item
// price + 5% service charge. Your function should be named addServiceCharge
// and take the price as a parameter.<br><br><em><strong>Hint:</strong> Replace
// all repeated calculation lines with calls to your new function.</em>

import 'dart:io';

// User-defined function
double addServiceCharge(double price) {
  return price + (price * 5 / 100);
}

void main() {
  // User Input
  print("Enter Order 1 Price:");
  double order1 = double.parse(stdin.readLineSync()!);

  print("Enter Order 2 Price:");
  double order2 = double.parse(stdin.readLineSync()!);

  print("Enter Order 3 Price:");
  double order3 = double.parse(stdin.readLineSync()!);

  // Function Calls
  double total1 = addServiceCharge(order1);
  double total2 = addServiceCharge(order2);
  double total3 = addServiceCharge(order3);

  // Output
  print("\n----- Zomato Bill -----");
  print("Order 1 Total: ₹$total1");
  print("Order 2 Total: ₹$total2");
  print("Order 3 Total: ₹$total3");
}