import 'dart:io';

void main() {
  print("Enter Name:");
  String? name = stdin.readLineSync();

  print("Enter Age:");
  String? ageStr = stdin.readLineSync();
  int age = int.parse(ageStr ?? "0");

  print("Enter City:");
  String? cityStr = stdin.readLineSync();

  print("Enter Salary:");
  String? salaryStr = stdin.readLineSync();
  double salary = double.parse(salaryStr ?? "0");

  print("Name: $name");
  print("Age: $age");
  print("City: $cityStr");
  print("Salary: $salary");

}


