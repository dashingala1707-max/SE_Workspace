//Create a Dart function named isValidUsername that takes a String and returns
// true if it is at least 6 characters long and contains no spaces, otherwise
// returns false.

import 'dart:io';

validuser(String username)
{
  if(username.length >= 6 && !username.contains(" "))
    {
        print("valid user");
    }
  else
    {
      print("invalid user");
    }

}

void main()
{
  print("Enter your name : ");
  String username = stdin.readLineSync()!;
  
  validuser(username);
}