//rite a function processUser(User user) that accepts either a SellerUser or
// CustomerUser object and calls displayInfo(). Demonstrate polymorphism by
// passing both types and showing the correct method output.

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

class SellerUser extends ProductUser {
  String? shopName;

  SellerUser(String name, String email, this.shopName)
      : super(name, email);

  @override
  void displayInfo() {
    print("\n----- Seller Information -----");
    print("Name      : $name");
    print("Email     : $email");
    print("Shop Name : $shopName");
  }
}

class CustomerUser extends ProductUser {
  String? address;

  CustomerUser(String name, String email, this.address)
      : super(name, email);

  @override
  void displayInfo() {
    print("\n----- Customer Information -----");
    print("Name    : $name");
    print("Email   : $email");
    print("Address : $address");
  }
}

void processUser(ProductUser user) {
  user.displayInfo();
}

void main() {

  print("Enter Seller Name:");
  String sellerName = stdin.readLineSync()!;

  print("Enter Seller Email:");
  String sellerEmail = stdin.readLineSync()!;

  print("Enter Shop Name:");
  String shopName = stdin.readLineSync()!;

  SellerUser seller = SellerUser(
    sellerName,
    sellerEmail,
    shopName,
  );

  print("\nEnter Customer Name:");
  String customerName = stdin.readLineSync()!;

  print("Enter Customer Email:");
  String customerEmail = stdin.readLineSync()!;

  print("Enter Customer Address:");
  String address = stdin.readLineSync()!;

  CustomerUser customer = CustomerUser(
    customerName,
    customerEmail,
    address,
  );

  print("\n===== Processing Users =====");
  processUser(seller);
  processUser(customer);
}