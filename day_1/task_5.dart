import "dart:io";
void main(){

  print("Enter a Product Name: ");
  String? stdName =stdin.readLineSync();
  print("Student Name is $stdName");

  print("Enter Product Price : ");
  String? PricetStr =stdin.readLineSync();
  double Price =double.parse(PricetStr??"0");
  print("Product Price is:  $Price");

  print("Enter product Quantity:");
  String? QuantityStr =stdin.readLineSync();
  double Quantity =double.parse(QuantityStr??"0");
  print("Product Quantity is: $Quantity");

  double total = Quantity*Price;
  print("Total Price is: $total");
  






}