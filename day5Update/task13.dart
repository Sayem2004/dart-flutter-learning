void main(){
  List<Map<String, dynamic>> studentData = [
{"name": "Rahim", "age": 21, "marks": 85},
{"name": "Karim", "age": 22, "marks": 35},
{"name": "Hasan", "age": 20, "marks": 70},
{"name": "Sakib", "age": 23, "marks": 55},
{"name": "Nayeem", "age": 21, "marks": 90}
];

print("Total Student: ${studentData.length}");

var passStudent =studentData.where((mark){
  return mark["marks"]>=40;
});
print("Passed Student: ${passStudent.length}");

var failStudent =studentData.where((mark){
  return mark["marks"]<40;
});
print("Failed Student: ${failStudent.length}");

var markList = studentData.map((mark){
  return mark["marks"];
}).toList();

var totalMarks = markList.reduce((a,b){
  return a+ b ;
});

var avgMark = totalMarks/studentData.length;
print("Average Marks: $avgMark");

var highestMark =studentData.reduce((a,b){
  return a["marks"]> b["marks"]? a:b;
});

print("Highest Mark: ${highestMark["marks"]}");
print("Top Student name: ${highestMark["name"]}");


}