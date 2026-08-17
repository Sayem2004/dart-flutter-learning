import 'dart:io';


double calculateTotal(double bangla, english, math, science){

  double total = bangla +english +math+ science;
  return total;
}

double calculateAverage(double total ){
  double avg =total/4;
  return avg;
  
}

String calculateGrade(double avg){
  if(avg>=80){
  return("A+");
}
else if(avg >=70){
  return("A");
}
else if(avg >= 60){
  return("A-");
}
else if(avg >= 50){
  return("B");
}
else if(avg >= 40){
  return("C");
}
else{return("F");}
}






void main(){
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

  double totalMark= calculateTotal(bangla, english, math, science);
  print("Total: $totalMark");
  
  double averageMark = calculateAverage(totalMark);
  print("Average: $averageMark");
  
  String grade = calculateGrade( averageMark);
  print("Grade: $grade");


}