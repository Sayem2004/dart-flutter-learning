import 'encapsulation.dart';

class Student{
  String name ="";
  int id =0;
  String department ="";

  Student(this.name, this.id, this.department);
  void displayInfo(){
    print("Student name is: $name");
    print("Student id is: $id");
    print("Student department is: $department");
  }
}
void main(){
  Student student =Student("Rofik", 8908, "EEE");
  student.displayInfo();
}




