//Refactor your Movie class so that genre is optional (can be null) and
// releaseYear has a default value of 2024 if not provided. Test by creating a
// Movie object with only the title and print its details.
// <br><br><em><strong>Hint:</strong> Use named parameters with default values
// and nullability in the constructor.</em>

import 'dart:io';

class Movie {
  // Fields
  String title;
  String? genre;
  int releaseYear;

  // Constructor with named parameters
  Movie({
    required this.title,
    this.genre,
    this.releaseYear = 2024,
  });

  // Method to display movie details
  void displayMovie() {
    print("\n========== Movie Details ==========");
    print("Title        : $title");
    print("Genre        : ${genre ?? "Not Provided"}");
    print("Release Year : $releaseYear");
  }
}

void main() {
  // User Input
  print("Enter Movie Title:");
  String title = stdin.readLineSync()!;

  // Create Movie object with only title
  Movie movie = Movie(title: title);

  // Display details
  movie.displayMovie();
}