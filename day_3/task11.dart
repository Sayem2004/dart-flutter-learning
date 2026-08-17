import 'dart:io';

void main() {
  print("Enter a number: ");
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr ?? "0");
  bool isPrime = true;
  if(num<=1){
    isPrime = false;

  }
 else{
  for(int i=2; i<num; i++){
    if(num%i==0){
      isPrime=false;
      break;
    }
  }
 }
 
 if(isPrime){
  print("$num is a Prime number ");
 }
 else{
  print("$num is not prime ");
 }

}