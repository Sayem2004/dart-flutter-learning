import "dart:io";
void main(){
  print("Enter Product Name : ");
  String? NameStr =stdin.readLineSync();
  print("Product Name is:  $NameStr");

  print("Enter Price : ");
  String? PriceStr =stdin.readLineSync();
  double Price =double.parse(PriceStr??"0");
  print(" Price is:  $Price");

  print("Enter  Quantity:");
  String?  QuantityStr =stdin.readLineSync();
  double  Quantity =double.parse( QuantityStr??"0");
  print("Quantity is: $Quantity");

  double totalPrice = Quantity*Price;
  print("Total price of each product: $totalPrice");

  // int discount=10;
  double totalDiscount =(totalPrice*10)/100;
  print("Discount Amount is: $totalDiscount");
  

  
  


}