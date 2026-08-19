void main() {
  List<String> students = ["rahim", "karim", "hasan"];
  var uppercase = students.map((name) {
    return name.toUpperCase();
  }).toList();

  print(uppercase);
}
