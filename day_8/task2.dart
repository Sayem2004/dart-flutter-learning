class Person{
  int _age = 0;


  int get age => _age;

  set age(int year){
    if(year>0){
      _age = year;
      print("Accept");
    }
    else{
      print("Rejected");
    }
  }
}

void main(){
  Person perAge =Person();
  perAge.age =25;
  print("Age= ${perAge.age}");
  perAge.age = -123;
}