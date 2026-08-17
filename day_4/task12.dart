import 'dart:io';

void add(double number1, double number2) {
 print("Result: ${number1 +number2} ");
}
void subtract(double number1, double number2) {
  print("Result: ${number1 - number2}");
}
void multiply(double number1, double number2) {
  print("Result: ${number1 * number2}") ;
}

void divide(double number1, double number2) {
  print("Result: ${number1/number2}");
}

void main(){
print("Enter first Number: ");
String? num1 = stdin.readLineSync();
double number1 = double.parse(num1??"0");
print("Enter Second Number: ");
String? num2 = stdin.readLineSync();
double number2 = double.parse(num2??"0");
print("Enter Operator: ");
String? operator = stdin.readLineSync();


if (operator == "+") {
  add(number1, number2);
} 
else if (operator == "-") {
  subtract(number1, number2);
} 
else if (operator == "*") {
  multiply(number1, number2);
} 
else if (operator == "/") {
  divide(number1, number2);
} 
else {
  print("Invalid operator");
}





}