import '../day_7/encapsulation.dart';

void main(){
  List<Map<String, dynamic>> students= [
{"name": "Rahim", "marks": 85},
{"name": "Karim", "marks": 35},
{"name": "Hasan", "marks": 70},
{"name": "Sakib", "marks": 45}
];

var passStudent =students.where((student){
  return student["marks"]>=40;
});
print("\nPassed Student:");
passStudent.forEach((student){
  print(student["name"]);
});

var higstMark =students.firstWhere((student){
  return student["marks"]>80;
});
print("\nFirst student whose marks are greater than 80:${higstMark["name"]}");
var highestMark = students.reduce((a,b){
  return a["marks"]> b["marks"]? a:b;
 });

 print("Highest Mark: ${highestMark["name"]}");

var stuName =students.map((student){
  return student["name"];
}).toList();
print("Student name:$stuName");

}