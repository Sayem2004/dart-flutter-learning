import 'dart:io';
void main(){
  print("Enter a number:");
  String? numStr =stdin.readLineSync();
  int num = int.parse(numStr??"0");
  for(int i =1; i<=10; i++){
    int value= num * i;
    print("$num*$i =$value");
  }
}