import 'dart:io';

void main()
{
  //taking values from the user

  print("Enter your favorite food name:");
  String? foodName = stdin.readLineSync();

  print("Enter the price of the food:");
  double price = double.parse(stdin.readLineSync()!);

  print("Is it vegetarian? (true/false):");
  bool isVegetarian = stdin.readLineSync()!.toLowerCase() == 'true';


  //printing the values
  print("favorite food $foodName");
  print("the price of food $price");
  print("veg or non-veg$isVegetarian");

}