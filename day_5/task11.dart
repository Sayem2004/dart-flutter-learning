void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Rahim", "marks": 85},
    {"name": "Karim", "marks": 35},
    {"name": "Hasan", "marks": 70},
    {"name": "Sakib", "marks": 45},
    {"name": "Nayeem", "marks": 90},
  ];

  print("Total Student: ${students.length}");

  var passStudent = students.where((student) {
    return student["marks"] >= 40;
  });

  print("\nPassed Student: ");
  passStudent.forEach((student) {
    print(student["name"]);
  });

  var failStudent = students.where((student) {
    return student["marks"] < 40;
  });

  print("\nFailed Student:");
  failStudent.forEach((student) {
    print(student["name"]);
  });

  var highestMarks = students
      .map((student) => student["marks"] as int)
      .reduce((a, b) => a > b ? a : b);

  print("\nHighest Marks: $highestMarks");

var firstStudent = students.firstWhere((student) {
    return student["marks"] > 80;
  });

  print("\nFirst student with marks > 80: ${firstStudent["name"]}");  
}
