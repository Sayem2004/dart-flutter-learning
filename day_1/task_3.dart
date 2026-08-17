import "dart:io";

void main(){
print("Enter your Length:");
String? LengthStr =stdin.readLineSync();
double Length = double.parse(LengthStr??"0");
print("Your Length is :$Length");

print("Enter your  Width: ");
String?  WidthStr = stdin.readLineSync();
double  Width = double.parse( WidthStr??"0");
print("Your Perimeter is :$Width");

double Area = Length*Width;
print("Area is: $Area");

double Perimeter = 2 * (Length + Width);
print("Perimeter is $Perimeter");






}