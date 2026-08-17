import 'dart:io';

void main() {
  print("Enter a number:");
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr ?? "0");

  int sum = 0;
  int count = 0;
  int evenCount = 0;
  int oddCount = 0;
  while (num > 0) {
    int digit = num % 10;
    sum = sum + digit;
    count++;
    if (digit % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
    num = num ~/ 10;
  }
  print("Sum of digits: $sum");
  print("Number of digits: $count");
  print("Even digits: $evenCount");
  print("Odd digits: $oddCount");

}