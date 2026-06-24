//Write a Dart program that takes a list of cricket scores
// (e.g., [45, 100, 78, 23, 56]) and uses a loop to count how many scores are
// above 50, then print the total number of 'half-centuries' like an IPL
// scoreboard.

import 'dart:io';

void main() {
  List<int> scores = [];

  print("Enter 5 cricket scores:");

  for (int i = 0; i < 5; i++) {
    print("Enter score ${i + 1}:");
    scores.add(int.parse(stdin.readLineSync()!));
  }

  int halfCenturies = 0;

  for (int score in scores) {
    if (score > 50) {
      halfCenturies++;
    }
  }

  print("\nCricket Scores: $scores");
  print("Total Half-Centuries (scores above 50): $halfCenturies");
}