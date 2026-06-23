//Write a Dart function checkDiscountEligibility that takes a user's order 
// amount and returns true if the amount is greater than or equal to 500, 
// otherwise false. Use a logical operator and print a message like 'You are 
// eligible for a discount!' or 'No discount available.' using string 
// interpolation.




import 'dart:io';

void main()
{
  print("enter your order amount : ");
  var orderamount = int.parse(stdin.readLineSync().toString());

  if(orderamount>=500)
    {
      print("you are elegible for the discount");
    }
  else
    {
      print("no discount avilable");
    }
}