//Write a Dart program that takes a user's name and the number of items in their
// cart, then prints a personalized message like 'Hi Priya, your cart has 3
// items.' using string interpolation.<br><br><em><strong>Constraint:</strong>
// Do not use the '+' operator to combine strings—use only string interpolation.
// </em>

import 'dart:io';

void main() {
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  print("Enter the number of items in your cart:");
  int items = int.parse(stdin.readLineSync()!);

  print("Hi $name, your cart has $items items.");
}