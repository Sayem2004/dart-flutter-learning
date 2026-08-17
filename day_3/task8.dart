import 'dart:io';

void main() {
  print("Enter multiple number: ");
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr ?? "0");

  int count = 0;
  while(num>0){
    num = num~/10;
    count++;
    
    }
    print("Number of digits: $count");

}
