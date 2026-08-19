void main(){
Map<String, dynamic> students = {
  "name":"Sayem",
  "age": 23,
  "city":"dhaka",
  "dept" : "CSe"
};

print(students["name"]);
print(students["age"]);
students["city"] = "Uttra";
students["email"] ="mdalimransayem@gmail.com";
students.remove("dept");




print(students.keys);
print(students.values);
}