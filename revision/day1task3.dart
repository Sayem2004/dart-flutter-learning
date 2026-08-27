import 'dart:io';

void main(){
  print(" Enter Length");
  String? lengthStr =stdin.readLineSync();
  double length = double .parse(lengthStr??"0");

  print(" Enter Width");
  String? widthStr =stdin.readLineSync();
  double width = double .parse(widthStr??"0");

  double area =width*length;
  double perimeter =2*(length+width);

  print("Area: $area And Perimeter :$perimeter");

}