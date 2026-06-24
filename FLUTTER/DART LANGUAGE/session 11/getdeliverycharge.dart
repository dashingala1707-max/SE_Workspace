import 'dart:io';

void main()
{
  print("enter the order value : ");
  var ordervalue = int.parse(stdin.readLineSync().toString());

  if(ordervalue <= 200)
    {
      print("the delivery charge is 50");
    }
  else if(ordervalue >= 200 && ordervalue < 500)
    {
      print("the delivery charge is 20");
    }
  else if(ordervalue>=500)
    {
      print("your delivery is free ");
    }
}