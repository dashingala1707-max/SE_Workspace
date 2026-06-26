//Write a reusable Dart function validatePhoneNumber that checks if a given
// string is a valid Indian mobile number (starts with 6-9 and has exactly 10
// digits).

import 'dart:io';

// User-defined function
bool validatePhoneNumber(String phoneNumber) {
  if (phoneNumber.length == 10 &&
      (phoneNumber.startsWith('6') ||
          phoneNumber.startsWith('7') ||
          phoneNumber.startsWith('8') ||
          phoneNumber.startsWith('9'))) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print("Enter your mobile number:");
  String phoneNumber = stdin.readLineSync()!;

  if (validatePhoneNumber(phoneNumber)) {
    print("Valid Indian Mobile Number");
  } else {
    print("Invalid Indian Mobile Number");
  }
}