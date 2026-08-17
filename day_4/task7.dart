import 'dart:io';


int factorial(int num){
  int fact =1;
  for(int i= num; i>0; i--){
    fact = fact*i;
  }
  return fact;
}


void main(){
  print("Enter a anumber: ");
  String? numStr =stdin.readLineSync();
  int num = int.parse(numStr??"0");

  int result = factorial(num);
  print(result);


}











// import 'dart:io';
// void main() {
//   print("Enter a number: ");
//   String? numStr = stdin.readLineSync();
//   int num = int.parse(numStr ?? "0");

//   int fact= 1;
//   for (int i = num; i > 0; i--) {
//     fact = fact * i;
//   }
//   print("Factorial is: $fact");
// }
