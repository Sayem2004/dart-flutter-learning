import 'dart:io';
void main(){

print("Enter Your Subject Marks");
String? marksStr = stdin.readLineSync();
double marks = double.parse(marksStr??"0");

if(marks>=80){
  print("A+");
}
else if(marks >=70){
  print("A");
}
else if(marks >= 60){
  print("A-");
}
else if(marks >= 50){
  print("B");
}
else if(marks >= 40){
  print("C");
}
else{print("F");}
}