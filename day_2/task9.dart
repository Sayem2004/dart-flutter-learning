import 'dart:io';
void main(){

print("Enter Your Purchase amount");
String? amountStr = stdin.readLineSync();
double amount = double.parse(amountStr??"0");
print("Purchase amount is: $amount");


if(amount >= 10000){
  print("Discount Percentage is: 20");
  double disAmount =(amount*20)/100;
  print("Discount amount is: $disAmount");
  double finalAmount = amount-disAmount;
  print("Final Payable Amount is: $finalAmount");

}
else if(amount >= 5000){
  print("Discount Percentage is: 10");
  double disAmount =(amount*10)/100;
  print("Discount amount is: $disAmount");
  double finalAmount = amount-disAmount;
  print("Final Payable Amount is: $finalAmount");

}
else if(amount >= 2000){
  print("Discount Percentage is: 5");
  double disAmount =(amount*5)/100;
  print("Discount amount is: $disAmount");
  double finalAmount = amount-disAmount;
  print("Final Payable Amount is: $finalAmount");

}

else if(amount<2000) {
  print(" No discount");
  print("Discount Percentage is:  No discount");
  print("Discount amount is: 00");
  print("Final Payable Amount is: $amount");
  
}







}