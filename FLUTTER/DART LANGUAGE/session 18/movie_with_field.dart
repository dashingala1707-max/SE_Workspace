//Write a Dart class called Movie with fields: title, genre, and releaseYear.
// Add a constructor, then create two Movie objects for any Bollywood or
// Hollywood films you love and display their info using print().

import 'dart:io';

class Movie {
  // Fields
  String title;
  String genre;
  int releaseYear;

  // Constructor
  Movie(this.title, this.genre, this.releaseYear);
}

void main() {
  // Movie 1 Input
  print("Enter details for Movie 1");

  print("Enter Movie Title:");
  String title1 = stdin.readLineSync()!;

  print("Enter Movie Genre:");
  String genre1 = stdin.readLineSync()!;

  print("Enter Release Year:");
  int year1 = int.parse(stdin.readLineSync()!);

  // Create Movie 1 Object
  Movie movie1 = Movie(title1, genre1, year1);

  print("\n-----------------------------\n");

  // Movie 2 Input
  print("Enter details for Movie 2");

  print("Enter Movie Title:");
  String title2 = stdin.readLineSync()!;

  print("Enter Movie Genre:");
  String genre2 = stdin.readLineSync()!;

  print("Enter Release Year:");
  int year2 = int.parse(stdin.readLineSync()!);

  // Create Movie 2 Object
  Movie movie2 = Movie(title2, genre2, year2);

  // Display Movie Details
  print("\n========== Movie Details ==========");

  print("\nMovie 1");
  print("Title        : ${movie1.title}");
  print("Genre        : ${movie1.genre}");
  print("Release Year : ${movie1.releaseYear}");

  print("\nMovie 2");
  print("Title        : ${movie2.title}");
  print("Genre        : ${movie2.genre}");
  print("Release Year : ${movie2.releaseYear}");
}