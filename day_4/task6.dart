import 'dart:io';



String calculate(double mark){
  if(mark>=80){
  return("A+");
}
else if(mark >=70){
  return("A");
}
else if(mark >= 60){
  return("A-");
}
else if(mark >= 50){
  return("B");
}
else if(mark >= 40){
  return("C");
}
else{return("F");}
}




void main(){

  print("\nEnter your Mark: ");
  String? markStr = stdin.readLineSync();
  double mark = double.parse(markStr??"0");
  String result =calculate(mark);

  print(result);



}