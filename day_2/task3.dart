import "dart:io";

void main(){
print("Enter your Subject mark: ");
String? markStr =stdin.readLineSync();
double mark = double.parse(markStr??"0");
if(mark>=40){
  print("Pass");
}

else{print("Fail");}
}