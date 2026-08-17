import 'dart:io';
void main(){

print('Enter your age ');
String? ageStr=stdin.readLineSync();
double age = double.parse(ageStr??"0");

if(age >=0 && age<=12){
  print("Child");
}
else if(age >=13 && age<=19){
  print("Teenager");
}
else if(age >=20 && age<=59){
  print("Adult");
}
else if(age>=60){
  
  print('Senior Citizen');

}
else{
  print("Invalid");

}
}