import 'encapsulation.dart';

class Student{
  String name ="";
  int id =0;
  String department ="";
  void studentNameId (){
    print("Student name is: $name , id is: $id and Department is: $department");
  } 
}

void main(){
Student s1 =Student();
s1.name="Rakib";
s1.id =12;
s1.department ="CSE";
s1.studentNameId();
Student s2 =Student();
s2.name="Hazrat";
s2.id =12;
s2.department ="EEE";
s2.studentNameId();

}