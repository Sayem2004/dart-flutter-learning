import 'dart:io';

double calculateDiscount(double price, double discountPercentage){


  double discountAmount = (price*discountPercentage)/100;
  double finalPrice = price-discountAmount;
  return finalPrice;

}
void main(){
  print("Price");
  String? priceStr = stdin.readLineSync();
  double price =double.parse(priceStr??"0");
  print("Discount");
  String? discountPercentageStr =stdin.readLineSync();
  double discountPercentage = double.parse(discountPercentageStr??"0");
  
  double finalPrice= calculateDiscount(price, discountPercentage);
  print("Final Price: $finalPrice");
  
}