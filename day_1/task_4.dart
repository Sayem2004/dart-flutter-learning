import "dart:io";
void main(){

  print("Enter a student Name: ");
  String? stdName =stdin.readLineSync();
  print("Student Name is $stdName");

  print("Enter Bangla Marks : ");
  String? BanglaStr =stdin.readLineSync();
  double Bangla =double.parse(BanglaStr??"0");
  print("Student Bangla Marks is $Bangla");

  print("Enter  English Marks : ");
  String? EnglishStr =stdin.readLineSync();
  double English =double.parse(EnglishStr??"0");
  print("Student English Marks is $English");

  print("Enter  Math Marks : ");
  String? MathStr =stdin.readLineSync();
  double Math =double.parse(MathStr??"0");
  print("Student Math Marks is $Math");

  print("Enter  Science Marks : ");
  String? ScienceStr =stdin.readLineSync();
  double Science =double.parse(ScienceStr??"0");
  print("Student Science Marks is $Science");

  double total = Bangla +English +Math+Science;
  print("Total Marks is: $total");
  double avg = total/4;
  print("Average Marks is: $avg");



}