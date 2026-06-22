//Declare two integer variables in main.dart: followers and following for a user
// profile (like Instagram). Calculate and print the difference
// (followers - following) to the console.


import 'dart:io';

void main() {
  print("Enter the number of followers:");
  int followers = int.parse(stdin.readLineSync()!);

  print("Enter the number of following:");
  int following = int.parse(stdin.readLineSync()!);

  int difference = followers - following;

  print("\n--- Profile Statistics ---");
  print("Followers: $followers");
  print("Following: $following");
  print("Difference (Followers - Following): $difference");
}