import 'dart:io';

void main(){
  print("Enter name");
  String? name =stdin.readLineSync();

  print("Enter age");
  String? ageStr = stdin.readLineSync();
  int age =int.parse(ageStr??"0");
  print("Enter Monthly salary");
  String? salaryStr = stdin.readLineSync();
  int salary =int.parse(salaryStr??"0");

  int yearlySalary =salary*12;

  print("\nName: $name");
  print("Age: $age");
  print("Monthly salary: $salary");
  print("Yearly salary: $yearlySalary");


}