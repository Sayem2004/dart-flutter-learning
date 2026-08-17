import 'dart:io';



void welcome(){
  print("Enter a Person name: ");
  String? nameStr = stdin.readLineSync();
  print("\nHello, $nameStr");
  print("Welcome to dart");
}

void main(){
  welcome();

}