import "dart:io";
void main(){
  print("Enter Food Price : ");
  String? PriceStr =stdin.readLineSync();
  double Price =double.parse(PriceStr??"0");
  print("Food Price is:  $Price");

  print("Enter  Quantity:");
  String?  QuantityStr =stdin.readLineSync();
  double  Quantity =double.parse( QuantityStr??"0");
  print("Quantity is: $Quantity");
  
  print("Enter   VAT Percentage Percentage:");
  String? VATStr =stdin.readLineSync();
  double VAT =double.parse(VATStr??"0");
  print("VAT Percentage is: $VAT");

  print("Enter  Service Charge Percentage:");
  String? ChargeStr =stdin.readLineSync();
  double Charge =double.parse(ChargeStr??"0");
  print("Service Charge Percentage is: $Charge");

double foodTotal = Price*Quantity;
print("Food Total: $foodTotal");
double vatAmount = (foodTotal * VAT) / 100;
print("VAT: $vatAmount");
double serviceCharge = (foodTotal * Charge) / 100;
print("Service Charge: $serviceCharge");
double grandTotal = foodTotal + vatAmount + serviceCharge;
print("Grand Total: $grandTotal");
  






}