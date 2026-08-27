import 'dart:io';

void main() {
  print("Enter a number");
  String? numberStr = stdin.readLineSync();
  int num = int .parse(numberStr??"0");

  int sum = 0;
  for(int i=1; i<=num ; i++){
    if(num%2 == 0){
      sum = sum+i;
    }
    
  }
  print("$sum");
}
