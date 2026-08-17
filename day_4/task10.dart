import 'dart:io';


void studentInfo({String? name, int? age}) {
  print("Name: $name");
  print("Age: $age");
}


void main(){

studentInfo(name: "Sayem", age: 22);
}