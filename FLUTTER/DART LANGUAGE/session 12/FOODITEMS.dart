//Create a Dart list named foodItems with 5 of your favorite Zomato dishes
// (as strings), then use a for loop to print each dish with its index
// (e.g., '1. Biryani')

import 'dart:io';

void main() {
  List<String> foodItems = [];

  for (int i = 0; i < 5; i++) {
    print("Enter food item ${i + 1}:");
    String food = stdin.readLineSync()!;
    foodItems.add(food);
  }

  print("\nYour Favorite Food Items:");

  for (int i = 0; i < foodItems.length; i++) {
    print("${i + 1}. ${foodItems[i]}");
  }
}