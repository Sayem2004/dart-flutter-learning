import 'dart:io';

double calculate(double amount) {
  if (amount >= 10000) {
    double discount = (amount * 20) / 100;
    return discount;
  } 

  else if (amount >= 5000) {
    double discount = (amount * 10) / 100;
    return discount;
  } 

  else if (amount >= 2000) {
    double discount = (amount * 5) / 100;
    return discount;
  } 
  
  else {
    return 0;
  }
}

void main() {

  print("Enter your total amount: ");
  String? amounntStr= stdin.readLineSync();
  double amount =double.parse(amounntStr??"0");

  double result =calculate(amount);
  print("Discount= $result");



}
