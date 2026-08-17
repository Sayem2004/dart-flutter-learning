import "dart:io";

void main(){

print('Enter your age ');
String? ageStr=stdin.readLineSync();
double age = double.parse(ageStr??"0");

if(age >=18){
  print("Man");
}
else{
  
  print('Child');

};
print("Enter Your Subject Marks");
String? marksStr = stdin.readLineSync();
double marks = double.parse(marksStr??"0");

if(marks>=90){
  print("A+");
}
else if(marks >=85){
  print("A");
}
else if(marks >= 80){
  print("B+");
}


else{print("Practices Nedded");};

print(marks == 90);
print(marks!=80);
print(marks>85);

print("============");

if(marks>=50 && age>=20){
  print("Its okay");
}
else{print("its not ok");}
}