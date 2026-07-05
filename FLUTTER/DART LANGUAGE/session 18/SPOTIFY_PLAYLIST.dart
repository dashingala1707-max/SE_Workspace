//Create a Dart class called Playlist representing a Spotify playlist with
// fields: playlistName and songCount. Write a function addSong() that increases
// songCount by 1. Create a Playlist object, add 3 songs using addSong(), and
// print the final songCount.

import 'dart:io';

class Playlist {
  // Fields
  String playlistName;
  int songCount;

  // Constructor
  Playlist(this.playlistName, this.songCount);

  // Method to add a song
  void addSong() {
    songCount++;
  }
}

void main() {
  // User Input
  print("Enter Playlist Name:");
  String playlistName = stdin.readLineSync()!;

  print("Enter Initial Song Count:");
  int songCount = int.parse(stdin.readLineSync()!);

  // Create Playlist object
  Playlist playlist = Playlist(playlistName, songCount);

  // Add 3 songs
  playlist.addSong();
  playlist.addSong();
  playlist.addSong();

  // Display Final Details
  print("\n========== Playlist Details ==========");
  print("Playlist Name     : ${playlist.playlistName}");
  print("Final Song Count  : ${playlist.songCount}");
}