import 'dart:io';


class Cafe {
  String cafeName = "";
  String location = "";


  Cafe();
  Cafe.parameterized(this.cafeName, this.location);


  void displayInfo() {
    print("Cafe Name : $cafeName");
    print("Location  : $location");
  }
}


class CafeOrder extends Cafe {
  String customerName = "";
  String itemName = "";
  String category = "";
  double price = 0;
  int quantity = 0;

  double totalBill = 0;
  double discount = 0;
  double finalBill = 0;


  CafeOrder();


  CafeOrder.parameterized(
      String cafeName,
      String location,
      this.customerName,
      this.itemName,
      this.category,
      this.price,
      this.quantity)
      : super.parameterized(cafeName, location);


  void takeOrder() {
    print("\nEnter Cafe Name:");
    cafeName = stdin.readLineSync()!;

    print("Enter Cafe Location:");
    location = stdin.readLineSync()!;

    print("Enter Customer Name:");
    customerName = stdin.readLineSync()!;

    print("Enter Item Name:");
    itemName = stdin.readLineSync()!;

    print("Enter Category (Food/Drink/Dessert):");
    category = stdin.readLineSync()!;

    print("Enter Price:");
    price = double.parse(stdin.readLineSync()!);

    print("Enter Quantity:");
    quantity = int.parse(stdin.readLineSync()!);

    print("\nPreparing Order...");
    for (int i = 1; i <= 3; i++) {
      print("Step $i");
    }

    print("\nTable Numbers:");
    int table = 1;
    while (table <= 3) {
      print("Table $table");
      table++;
    }
  }

  void calculateBill() {
    totalBill = price * quantity;

    if (totalBill >= 1000) {
      discount = totalBill * 0.20;
    } else if (totalBill >= 500) {
      discount = totalBill * 0.10;
    } else {
      discount = 0;
    }

    finalBill = totalBill - discount;

    print("\nCategory Message:");
    if (category.toLowerCase() == "food") {
      print("Enjoy your delicious meal!");
    } else if (category.toLowerCase() == "drink") {
      print("Enjoy your refreshing drink!");
    } else if (category.toLowerCase() == "dessert") {
      print("Enjoy your sweet dessert!");
    } else {
      print("Invalid Category!");
    }
  }


  void displayBill() {
    displayInfo();
  }


  @override
  void displayInfo() {
    print("\n========== CAFE BILL ==========\n");

    print("Cafe Name : $cafeName");
    print("Location  : $location\n");

    print("Customer  : $customerName");
    print("Item      : $itemName");
    print("Category  : $category");
    print("Price     : ₹$price");
    print("Quantity  : $quantity\n");

    print("Total Bill : ₹$totalBill");

    if (discount > 0) {
      double percent = (discount / totalBill) * 100;
      print("Discount  : ${percent.toInt()}%");
    } else {
      print("Discount  : No Discount");
    }

    print("Final Bill : ₹$finalBill");

    print("\n===============================\n");
  }
}

void main() {
  CafeOrder order = CafeOrder();

  int choice;

  do {
    print("========== CAFE MENU ==========");
    print("1. Take Order");
    print("2. Calculate Bill");
    print("3. Display Bill");
    print("4. Exit");
    print("===============================");

    stdout.write("Enter Your Choice: ");
    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        order.takeOrder();
        break;

      case 2:
        order.calculateBill();
        break;

      case 3:
        order.displayBill();
        break;

      case 4:
        print("\nThank You! Visit Again.");
        break;

      default:
        print("\nInvalid Choice!");
    }

    print("");
  } while (choice != 4);
}