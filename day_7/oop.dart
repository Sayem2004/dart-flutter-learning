class car{

  String brand= "";
  int price = 0;
  void showDetails(){
    print("$brand prise is: $price");

    }}

    class student{

      String name ="";
      int id =0;
      double cgpa = 0.0;

      void studentDetails (){
        print("Student Name is: $name");
        print("Student Id is: $id");
        print("Student CGPA is: $cgpa");
      }
    }
  
  void main (){
    car myCar1  = car();
    myCar1.brand = " ABC ";
    myCar1.price= 7879;
    myCar1.showDetails();
    print("\n");

    car myCar2 = car();
    myCar2.brand="xyz";
    myCar2.price= 46655;
    myCar2.showDetails();
        print("\n");


    student s1 =student();
    s1.name = "Sayem";
    s1.id = 22480232;
    s1.cgpa = 3.57;
    s1.studentDetails();
        print("\n");

    student s2 =student();
    s2.name = "Rohim";
    s2.id = 22480212;
    s2.cgpa = 3.58;
    s2.studentDetails();

  }

