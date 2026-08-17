import 'dart:io';
void main(){
  print("Enter a number");
  String? numStr =stdin.readLineSync();
  int num =int.parse(numStr??"0");
  int sum =0;
  for(int i=1; i<=num; i++){
    if(i%2 ==0){
       sum +=i;
    }
    
  }  print("Sum of even Numbers: $sum");

}