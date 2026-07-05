//Create a Dart class called Restaurant with fields name, cuisine, and rating.
// Add a constructor to initialize all fields, then create an object for a
// restaurant you like and print all its details.

import 'dart:io';

class Restaurant {
  // Fields
  String name;
  String cuisine;
  double rating;

  // Constructor
  Restaurant(this.name, this.cuisine, this.rating);
}

void main() {
  // Taking user input
  print("Enter Restaurant Name:");
  String name = stdin.readLineSync()!;

  print("Enter Cuisine:");
  String cuisine = stdin.readLineSync()!;

  print("Enter Rating:");
  double rating = double.parse(stdin.readLineSync()!);

  // Creating object
  Restaurant restaurant = Restaurant(name, cuisine, rating);

  // Printing details
  print("\n----- Restaurant Details -----");
  print("Restaurant Name : ${restaurant.name}");
  print("Cuisine         : ${restaurant.cuisine}");
  print("Rating          : ${restaurant.rating}");
}