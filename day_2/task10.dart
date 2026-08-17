import 'dart:io';
void main(){
print("Enter a first Number: ");
String? number1Str =stdin.readLineSync();
double number1 = double.parse(number1Str??"0");

print("Enter a Second Number: ");
String? number2Str =stdin.readLineSync();
double number2 = double.parse(number2Str??"0");

print("Enter a operator: ");
String? operatorStr =stdin.readLineSync();

if(operatorStr == "+"){
  double sum= number1 + number2;
  print("Result: $sum");
}
else if(operatorStr ==  "-"){
  double Sub= number1 - number2;
  print("Result: $Sub");
}
else if(operatorStr ==  "*"){
  double mul= number1 * number2;
  print("Result: $mul");
}
else if (operatorStr == "/") {
    double div = number1 / number2;
    print("Result: $div");
  } 
else {
    print("Invalid operator!");
  }



}