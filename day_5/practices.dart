void main(){

  List<String> names =["AA", "UU", "CC"];


  print(names[0]);
  names.add("ww");
  names.remove("UU");

  names[2]="rofik";

  print(names);
  for (String name in names) {
  print(name);
}

Map<String, dynamic> student = {
  "name": "Rahim",
  "age": 22,
  "department": "CSE"
};

print(student["name"]);
print(student["age"]);
print(student["department"]);

Map<String, dynamic> course = {
  "coname": "Bangla",
  "id": 105,
  "duration" : 1.5

};

print("\n---------------------");
print(course["id"]);

course["coname"] = "Englis";
print(course);




}