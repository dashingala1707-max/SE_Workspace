//Use ChatGPT to generate a Dart code snippet that asks the user for their
// favorite food from a list ('Pizza', 'Burger', 'Dosa', 'Biryani'), then uses
// a switch-case to print a unique message for each food. Paste the generated
// code into your Dart file and test it.<br><br><em><strong>Hint:</strong>
// Prompt ChatGPT with: 'Write a Dart function that takes a food name as input
// and prints a special message for each using switch-case.'</em>

import 'dart:io';

void main() {
  print("Choose your favorite food:");
  print("Pizza, Burger, Dosa, Biryani");

  String food = stdin.readLineSync()!;

  switch (food) {
    case 'Pizza':
      print("Pizza is cheesy and delicious!");
      break;

    case 'Burger':
      print("Burger is a perfect fast-food choice!");
      break;

    case 'Dosa':
      print("Dosa is a tasty South Indian dish!");
      break;

    case 'Biryani':
      print("Biryani is full of amazing flavors!");
      break;

    default:
      print("Sorry, that food is not in the list.");
  }
}