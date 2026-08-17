import 'dart:io';

void main() {
  print("Enter multiple number: ");
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr ?? "0");
  int revers =0;
  while(num>0){
    int rimender = num%10;
    revers = revers*10+rimender;
    num = num ~/ 10;

  }
  print("Reversed Number: $revers");


}