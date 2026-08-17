import 'dart:io';

void createProfile({required String name, required int age, String city ="Dhaka", String email = "Not Provided"}){
  print("Nmae: $name");
  print("Age: $age");
  print("City: $city");
  print("Email: $email");
}


void main(){

  createProfile(name:"Sayem", age: 22);

}