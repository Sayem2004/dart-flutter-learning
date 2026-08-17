import "dart:io";

void main(){
print("Enter a number");
String? numberStr =stdin.readLineSync();
double number = double.parse(numberStr??"0");
if(number>0){
  print("Posiive");
}
else if(number<0){
  print("Negative");
}
else{print("Zero");}
}