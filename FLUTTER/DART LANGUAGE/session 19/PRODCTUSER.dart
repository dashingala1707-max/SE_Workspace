//Create a Dart class called ProductUser with properties name and email, and a
// method displayInfo() that prints both properties.

import 'dart:io';

class productuser
{
  var name;
  var email;

  void display()
  {
    print("----------user info---------");
    print("your name is : $name");
    print("your email is : $email");
  }
}

void main()
{
  productuser a = productuser();

  print("enter your name : ");
  a.name = stdin.readLineSync();

  print("enter your email : ");
  a.email = stdin.readLineSync();

  a.display();
}