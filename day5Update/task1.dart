void main (){
  List<String> students =["Ahmmed","Bellal","Caddam","Dolon", "Eistiaq"];


  print(students);

  print(students[0]);
  print(students[4]);
  print(students.length);

  students[0] ="Abdur";
  students.add("Farhan");
  students.remove("Bellal");



  print("\n");
  for(String name in students){
    print("User: $name");
  }
}