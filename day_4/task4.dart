import 'dart:io';

void evenOdd(int number) {
  if (number % 2 == 0) {
    print("It's a Even Number ");
  } else {
    print("It's a Odd number");
  }
}

void main() {
  print("Enter an numbera:");
  String? numberStr = stdin.readLineSync();
  int number = int.parse(numberStr ?? "0");
  
  evenOdd(number);
}
