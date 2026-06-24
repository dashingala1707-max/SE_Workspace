//Given a Dart map called movieRatings with 5 movie titles as keys and their
// ratings (out of 10) as values, use a for-in loop to print each movie and its
// rating in the format 'Jawan: 8/10'.

import 'dart:io';

void main() {
  Map<String, int> movieRatings = {};

  // Taking 5 movies and ratings from the user
  for (int i = 0; i < 5; i++) {
    print("Enter movie title ${i + 1}:");
    String movie = stdin.readLineSync()!;

    print("Enter rating for $movie (out of 10):");
    int rating = int.parse(stdin.readLineSync()!);

    movieRatings[movie] = rating;
  }

  print("\nMovie Ratings:");

  for (var movie in movieRatings.keys) {
    print("$movie: ${movieRatings[movie]}/10");
  }
}