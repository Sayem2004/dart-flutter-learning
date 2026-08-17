import "dart:io";

void main(){
print("Enter a number");
String? numberStr =stdin.readLineSync();
double number = double.parse(numberStr??"0");

double evOd =number%2;
if(evOd ==0){
  print("Even");
}
else{print("Odd");}
}