//Build a CustomerUser class that extends ProductUser and adds a method
// placeOrder(productName) which prints a message like 'Order placed for
// {productName} by {name}'. Use the this keyword to access the user's name.

import 'dart:io';

class ProductUser {
  String? name;
  String? email;

  ProductUser(this.name, this.email);

  void displayInfo() {
    print("\n----- User Information -----");
    print("Name  : $name");
    print("Email : $email");
  }
}

class CustomerUser extends ProductUser {

  CustomerUser(String name, String email) : super(name, email);

  void placeOrder(String productName) {
    print("\nOrder placed for $productName by ${this.name}");
  }
}

void main() {

  print("Enter Customer Name:");
  String name = stdin.readLineSync()!;

  print("Enter Customer Email:");
  String email = stdin.readLineSync()!;

  print("Enter Product Name:");
  String productName = stdin.readLineSync()!;

  CustomerUser customer = CustomerUser(name, email);

  customer.displayInfo();

  customer.placeOrder(productName);
}