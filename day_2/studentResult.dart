import 'dart:io';

void main() {
  print("Enter Student Name:");
  String? nameStr = stdin.readLineSync();

  print("Enter Student Id: ");
  String? idStr = stdin.readLineSync();
  int id = int.parse(idStr ?? "0");

  print("Enter Bangla Marks:");
  String? banglaStr = stdin.readLineSync();
  double bangla = double.parse(banglaStr ?? "0");

  print("Enter English Marks:");
  String? englishStr = stdin.readLineSync();
  double english = double.parse(englishStr ?? "0");

  print("Enter Math Marks:");
  String? mathStr = stdin.readLineSync();
  double math = double.parse(mathStr ?? "0");

  print("Enter Science Marks:");
  String? scienceStr = stdin.readLineSync();
  double science = double.parse(scienceStr ?? "0");

  double totalMark = bangla + english + math + science;

  double avgMark = totalMark / 4;

  String result;
  

  if (avgMark >= 40) {
    result = "Pass";
  } else {
    result = "Fail";
  }

  String grade;

  if (avgMark >= 80) {
    grade = "A+";
  } else if (avgMark >= 70) {
    grade = "A";
  } else if (avgMark >= 60) {
    grade = "A-";
  } else if (avgMark >= 50) {
    grade = "B";
  } else if (avgMark >= 40) {
    grade = "C";
  } else {
    grade = "F";
  }

  print("==================================\n");
  print("Student result\n");
  print("==================================\n");
  print("Name: $nameStr");
  print("Student ID: $id");
  print("Bangla: $bangla");
  print("English: $english");
  print("Math: $math");
  print("Science: $science");
  print("Total Marks: $totalMark");
  print("Average Marks: $avgMark");
  print("Average Marks: $avgMark");
  print("Result: $result");
  print("Grade: $grade");
  print("==================================\n");

}
