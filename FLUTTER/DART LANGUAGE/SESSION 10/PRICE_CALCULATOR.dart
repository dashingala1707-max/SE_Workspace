//create a Dart program called price_calculator.dart that takes the base price of
//a food item (for example, a burger) and calculates the total price after
// adding 12% GST. Print both the original price and the final price using
// string interpolation.



import 'dart:io';

void main() {
  print("Enter the base price of the food item:");
  double originalPrice = double.parse(stdin.readLineSync()!);

  double gst = originalPrice * 12 / 100;
  double finalPrice = originalPrice + gst;

  print("\nOriginal Price: ₹$originalPrice");
  print("Final Price after adding 12% GST: ₹$finalPrice");
}