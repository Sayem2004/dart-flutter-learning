void main(){
  Map<String, dynamic> student = {"name": "Sayem", "age": 22, 
  "city": "Dhaka", "department": "CSE" };

  print(student["name"]);
  print(student["age"]);

  student["city"] = "Dhaka, Bangladesh";
  student["email"] = "sayem@gmail.com";
  student.remove("department");

  print(student);




}