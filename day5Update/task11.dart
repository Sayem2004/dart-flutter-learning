void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Rahim", "marks": 85},
    {"name": "Karim", "marks": 35},
    {"name": "Hasan", "marks": 70},
    {"name": "Sakib", "marks": 45},
    {"name": "Nayeem", "marks": 90},
  ];

  print("Total Student =${students.length}");

  var passStudent = students.where((mark) {
    return mark["marks"] >= 40;
  });
  print("Passed Student: ");
  passStudent.forEach((mark) {
    //print("Passed Student");
    print(mark["name"]);
  });

  var failStudent = students.where((mark) {
    return mark["marks"] < 40;
  });
  print("Failed Student: ");
  failStudent.forEach((mark) {
    print(mark["name"]);
  });

  var highestMark = students.reduce((a, b) {
    return a["marks"] > b["marks"] ? a : b;
  });
  print("Highest marks: ${highestMark["marks"]}");

  var firstHighest = students.firstWhere((mark) {
    return mark["marks"] >= 80;
  });

  print("First student with marks greater than 80:${firstHighest["name"]} ");
}
