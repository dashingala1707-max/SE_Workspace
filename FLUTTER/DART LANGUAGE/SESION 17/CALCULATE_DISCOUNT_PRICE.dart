//Write a reusable Dart function called calculateDiscountedPrice that accepts
// the original price and discount percentage, and returns the final price
// after applying the discount. Test it with a Flipkart-style scenario:
// original price ₹1500, discount 20%.

import 'dart:io';

double discountprice(double originalprice,double percentage)
{
  double discount = (originalprice * percentage)/100;
  double finalprice = originalprice - discount;
  return finalprice;
}

void main()
{
  print("Enter the original price of your product : ");
  double originalprice = double.parse(stdin.readLineSync()!);

  print("enter the discount percentage : ");
  double percentage = double.parse(stdin.readLineSync()!);

  double finalprice = discountprice(originalprice, percentage);

  print("original price : $originalprice");
  print("discount : $percentage");
  print("the final price : $finalprice");
}