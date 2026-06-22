//Refactor your main.dart code to group all user details (name, age, email) into
// a single UserProfile class with appropriate data types. Create an object of
// UserProfile, assign values, and print each property.

import 'dart:io';

void main()
{
  print("Enter your name:");
  String name = stdin.readLineSync()!;

  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);

  print("Enter your email:");
  String email = stdin.readLineSync()!;

  print("----------your profile checkup------------");
  print("your name : $name");
  print("your age : $age");
  print("your email : $email");
}