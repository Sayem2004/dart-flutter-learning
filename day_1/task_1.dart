import "dart:io";

void main(){

  print("Enter your Name: ");
  String? nameStr =stdin.readLineSync();
  print("Your name is $nameStr");

  print("Enter your Age: ");
  String? ageStr =stdin.readLineSync();
  int age =int.parse(ageStr??"0");
  print("Your age is $age");

  print("Enter Your City Name:");
  String? city_str =stdin.readLineSync();
  print("Youe city name is $city_str");

  print("Enter your Height");
  String? height_str =stdin.readLineSync();
  double height = double.parse(height_str??"0");
  print("Your height is $height");

  print("Enter your Salary");
  String? Salary_str =stdin.readLineSync();
  int Salary = int.parse(Salary_str??"0");
  print("your salary is $Salary");




}