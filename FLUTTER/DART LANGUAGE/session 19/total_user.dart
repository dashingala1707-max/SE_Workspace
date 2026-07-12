//Create a static variable totalUsers in the ProductUser class that keeps
// track of how many ProductUser (and its subclasses) objects have been created.
// Increment it in each constructor and print its value after creating three
// different users.

import 'dart:io';

class ProductUser {
  String? name;
  String? email;

  static int totalUsers = 0;

  ProductUser() {
    totalUsers++;
  }

  void displayInfo() {
    print("\n----- User Information -----");
    print("Name  : $name");
    print("Email : $email");
  }
}

class SellerUser extends ProductUser {
  String? shopName;

  SellerUser() : super();

  @override
  void displayInfo() {
    super.displayInfo();
    print("Shop Name : $shopName");
  }
}

void main() {
  // -------- User 1 --------
  ProductUser user1 = ProductUser();

  print("Enter Name of User 1:");
  user1.name = stdin.readLineSync();

  print("Enter Email of User 1:");
  user1.email = stdin.readLineSync();

  // -------- User 2 --------
  ProductUser user2 = ProductUser();

  print("\nEnter Name of User 2:");
  user2.name = stdin.readLineSync();

  print("Enter Email of User 2:");
  user2.email = stdin.readLineSync();

  // -------- User 3 (Seller) --------
  SellerUser seller = SellerUser();

  print("\nEnter Seller Name:");
  seller.name = stdin.readLineSync();

  print("Enter Seller Email:");
  seller.email = stdin.readLineSync();

  print("Enter Shop Name:");
  seller.shopName = stdin.readLineSync();

  print("\n========== USER DETAILS ==========");
  user1.displayInfo();

  print("");
  user2.displayInfo();

  print("");
  seller.displayInfo();

  print("\nTotal Users Created: ${ProductUser.totalUsers}");
}