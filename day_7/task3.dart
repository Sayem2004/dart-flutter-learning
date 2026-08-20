import 'encapsulation.dart';

class Student{
  String name ="";
  int id =0;
  String department ="";

  Student(this.name, this.id, this.department);

  void info(){
    print("Student Name is: $name, Id is: $id, and department is: $department");
  }

}

void main(){
Student s1 =Student("Rahim", 101, "CSE");
s1.info();


}