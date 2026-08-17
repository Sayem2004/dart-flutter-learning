import 'dart:io';

void main() {
  int secretNumber = 25;
  int guess = 0;

  while (guess != secretNumber) {
    print("Enter your guess:");
    String? numStr = stdin.readLineSync();
    int guess = int.parse(numStr??"0");

    if (guess < secretNumber) {
      print("Too Low");
    } else if (guess > secretNumber) {
      print("Too High");
    } else {
      print("Correct!");
    }
  }
}