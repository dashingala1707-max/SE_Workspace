//Extend ProductUser to create a SellerUser class with an additional property
// shopName and override the displayInfo() method to also print the shop name.
// <br><br><em><strong>Hint:</strong> Use the super keyword to call the base
// class method inside your override.</em>

import 'dart:io';

class ProductUser {
  String? name;
  String? email;

  void displayInfo() {
    print("\n----- User Information -----");
    print("Name      : $name");
    print("Email     : $email");
  }
}

class SellerUser extends ProductUser {
  String? shopName;

  @override
  void displayInfo() {
    super.displayInfo();
    print("Shop Name : $shopName");
  }
}

void main()
{

  SellerUser seller = SellerUser();

  print("Enter your name:");
  seller.name = stdin.readLineSync();

  print("Enter your email:");
  seller.email = stdin.readLineSync();

  print("Enter your shop name:");
  seller.shopName = stdin.readLineSync();

  seller.displayInfo();
}