void main(){

List<Map<String, dynamic>> students = 
[{"name": "Rahim", "marks": 85}, 
{"name": "Karim", "marks": 35}, 
{"name": "Hasan", "marks": 70}, 
{"name": "Sakib", "marks": 45} ];

var pass =students.where((student){
  return student["marks"] >= 40;
}).toList();

pass.forEach((student){
  print(student["name"]);
});


}