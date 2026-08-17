import 'dart:io';
void main(){
  print("Enter your User Nmae");
  String? userNameStr =stdin.readLineSync();

  print("Enter your User Password");
  String? PasswordeStr =stdin.readLineSync();
  int currentPassword = int.parse(PasswordeStr??"0");

  String userName = "sayem12";
  int Passwprd = 123456;

  if(userNameStr == userName && Passwprd == currentPassword){
    print("Login Successful");
  }
  else{
    print("Invalid Username or Password");
  }



}