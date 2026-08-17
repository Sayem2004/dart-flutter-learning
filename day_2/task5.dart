import "dart:io";

void main(){
print("Enter a first Number: ");
String? number1Str =stdin.readLineSync();
double number1 = double.parse(number1Str??"0");
print("Enter a Second Number: ");
String? number2Str =stdin.readLineSync();
double number2 = double.parse(number2Str??"0");
print("Enter a Third Number: ");
String? number3Str =stdin.readLineSync();
double number3 = double.parse(number3Str??"0");

if (number1 >= number2 && number1 >= number3) {
  print("Number 1 is largest");
} else if (number2 >= number1 && number2 >= number3) {
  print("Number 2 is largest");
} else {
  print("Number 3 is largest");
}

}