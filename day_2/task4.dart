import "dart:io";

void main(){
print("Enter a first Number: ");
String? number1Str =stdin.readLineSync();
double number1 = double.parse(number1Str??"0");
print("Enter a Second Number: ");
String? number2Str =stdin.readLineSync();
double number2 = double.parse(number2Str??"0");

if(number1>number2){
  print("Number 1 is larger");
}
else if(number1<number2){
  print("Number 2 is larger ");
}
else{print("Both number is equal");}

}