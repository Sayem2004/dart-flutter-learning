import "dart:io";
void main(){
  print("Enter Basic Salary : ");
  String? SalaryStr =stdin.readLineSync();
  double Salary =double.parse(SalaryStr??"0");
  print("Basic Salary is:  $Salary");

  double hreant =40;
  double medAllowance =10;
  double taxp =5;

  double houseReant =(hreant*Salary)/100;
  print("House Reant is: $houseReant");
  double medicalAllowance =(Salary*medAllowance)/100;
  print("Medical Allowance is: $medicalAllowance");

  double grossSalary =Salary+houseReant+medicalAllowance;
  print("Gross Salary: $grossSalary");
    double tex =(grossSalary *taxp)/100;
  print("Tax is: $tex");
  double netSalary = grossSalary- tex;
  print("Net Salary: $netSalary");







  


}