void main(){

List<Map<String, dynamic>> students = 
[{"name": "Rahim", "marks": 85}, 
{"name": "Karim", "marks": 35}, 
{"name": "Hasan", "marks": 70}, 
{"name": "Sakib", "marks": 45} ];

var pass =students.firstWhere((student){
  return student["marks"] >= 40;
});

print(pass["name"]);


}