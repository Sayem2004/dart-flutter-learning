import 'dart:io';
void main(){ 
print("Enter electricity consumed Unit: ");
String? unitStr =stdin.readLineSync();
double Unit = double.parse(unitStr??"0");


double totalBill = 0;

  if (Unit <= 100) {
    totalBill = Unit * 5;
  } 
  else if (Unit <= 200) {
    totalBill = (100 * 5) + ((Unit - 100) * 7);
  } 
  else {
    totalBill = (100 * 5) + (100 * 7) + ((Unit - 200) * 10);
  }

  print("Total Electricity Bill: $totalBill BDT");

}

