import "dart:io";
void main(){
  print("Enter Basic Salary : ");
  String? SalaryStr =stdin.readLineSync();
  double Salary =double.parse(SalaryStr??"0");
  print("Salary is:  $Salary");

  print("Enter House Rent Percentage:");
  String? RentStr =stdin.readLineSync();
  double Rent =double.parse(RentStr??"0");
  print("House Rent Percentage is: $Rent");
  
  print("Enter Medical Allowance Percentage:");
  String? MedicalStr =stdin.readLineSync();
  double Medical =double.parse(MedicalStr??"0");
  print("Medical Allowance Percentage is: $Medical");

  double  houseRent = (Salary*Rent)/100;
  print("House Rent is:$houseRent");
  double medicalAllowance =(Salary*Medical)/100;
  print("Medical Allowance is :$medicalAllowance");
  double Gross =medicalAllowance+houseRent+Salary;
  print("Gross Salary is: $Gross");

  






}