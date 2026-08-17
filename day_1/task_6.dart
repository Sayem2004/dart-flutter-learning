import "dart:io";
void main(){
  print("Enter Product Price : ");
  String? PricetStr =stdin.readLineSync();
  double Price =double.parse(PricetStr??"0");
  print("Product Price is:  $Price");

  print("Enter Discount Percentage:");
  String? DiscountStr =stdin.readLineSync();
  double Discount =double.parse(DiscountStr??"0");
  print("Discount Percentage is: $Discount");

  double discountAmount = (Discount*Price)/100;
  double finalPrice= Price -discountAmount;
  print("Final Price is: $finalPrice");
  






}