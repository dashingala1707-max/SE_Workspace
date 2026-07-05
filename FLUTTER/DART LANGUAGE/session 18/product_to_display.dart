//Build a Dart class called Product to represent items on Flipkart, with fields:
// productName, price, and isAvailable. Add a constructor and a method
// displayProduct() that prints all details in a nice format. Instantiate one
// Product and call displayProduct().

import 'dart:io';

class Product {
  // Fields
  String productName;
  double price;
  bool isAvailable;

  // Constructor
  Product(this.productName, this.price, this.isAvailable);

  // Method to display product details
  void displayProduct() {
    print("\n========== Product Details ==========");
    print("Product Name : $productName");
    print("Price        : ₹$price");
    print("Available    : ${isAvailable ? "Yes" : "No"}");
  }
}

void main() {
  // User Input
  print("Enter Product Name:");
  String productName = stdin.readLineSync()!;

  print("Enter Product Price:");
  double price = double.parse(stdin.readLineSync()!);

  print("Is the product available? (true/false):");
  bool isAvailable = bool.parse(stdin.readLineSync()!);

  // Create Product object
  Product product = Product(productName, price, isAvailable);

  // Display product details
  product.displayProduct();
}