import 'dart:io';


//Write Dart code in main.dart to declare variables for a Flipkart product: productName (String), productPrice (double), and isInStock (bool). Print a message like 'Product: iPhone 13, Price: 69999.0, In Stock: true' using string interpolation.
// 3.

void main()
{
  print("enter the name of product");
  String? productname = stdin.readLineSync();
  
  print("enter the price of product");
  double price = double.parse(stdin.readLineSync()!);
  
  print("is in stock or not true/false");
  bool isinstock = stdin.readLineSync()!.toLowerCase() == 'true';
  
  stdout.write("product name :$productname,");
  stdout.write("price :$price,");
  stdout.write("is in stock true/false :$isinstock,");
  
  
  
  
}