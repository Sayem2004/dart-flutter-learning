class Person{
  String name ="";
  int age =0;

  void studentDetails(){
    print("Name: $name");
    print("Age: $age");

  }

}

void main(){
  Person p1=Person();
  p1.name="Rahim";
  p1.age= 25;
  p1.studentDetails();

}