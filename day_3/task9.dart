import 'dart:io';

void main() {
  print("Enter a number: ");
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr ?? "0");

  int fact= 1;
  for (int i = num; i > 0; i--) {
    fact = fact * i;
  }
  print("Factorial is: $fact");
}
