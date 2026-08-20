class student {
  String name = "";
  double _marks = 0;

  double get marks {
    return _marks;
  }

  set mark(double mark) {
    if (mark >= 0 && mark <= 100) {
      _marks = mark;
      print("<Mark is added>");
    } else {
      print("Enter valid mark");
    } 
  }
  

  void showData(){
      print("Student Name: $name  and Mark is: $_marks");
    }
  }
  
  void main (){
    student s1=student();
    s1.name = "Saim";
    s1.mark =70;
    s1.showData();
    student s2=student();
    s2.name = "Sayem";
    s2.mark =170;
    s2.showData();
  }





