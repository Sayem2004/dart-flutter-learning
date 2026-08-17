import 'dart:io';

void main() {
  print("Enter a number: ");
  String? numStr = stdin.readLineSync();
  int num = int.parse(numStr ?? "0");

  int first=0;
  int second=1;
  for (int i = 1; i <= num; i++) {
    print(first);
    int next = first + second;
    first = second;
    second = next;
}}
