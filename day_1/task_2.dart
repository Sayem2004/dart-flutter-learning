import "dart:io";

void main(){


  print("Enter a First  number:");
  String? number1Str= stdin.readLineSync();
  double num1 =double.parse(number1Str??"0");
  print("Your first number $num1");

  print("Enter a sacond number:");
  String? number2Str =stdin.readLineSync();
  double num2 = double.parse(number2Str??"0");
  print("Your Second number $num2");

  double addition = num1+num2;
  double Subtraction = num1-num2;
  double Multiplication = num1*num2;
  double Division = num1/num2;
  double Remainder = num1%num2;

  print("Addition: $addition");
  print("Subtraction: $Subtraction");
  print("Multiplication: $Multiplication");
  print("Division: $Division");
  print("Remainder: $Remainder");






}