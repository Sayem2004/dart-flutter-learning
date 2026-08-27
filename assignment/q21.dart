class Employee{
  String name ="";
  int id = 0;
  double salary =0;
  Employee(this.name, this.id, this.salary);

  void displayInfo(){
    print("Name: $name");
    print("Id: $id");
    print("Monthly Salary: $salary");
  }
  double yearlySalary(){
    return salary*12;
  }

}

class Manager extends Employee{
 double bonus =0;
 Manager(String name, int id, double salary, this.bonus)
      : super(name, id, salary);
 
  @override
  double  yearlySalary(){
    return salary*12 + bonus;
  }

}

class Developer extends Employee{
  String programmingLanguage = "";
  Developer(String name, int id, double salary, this.programmingLanguage):super(name, id, salary);
  @override
    void displayInfo(){
    print("Name: $name");
    print("Id: $id");
    print("Monthly Salary: $salary");
    print("Programming Language: $programmingLanguage");
  }

}

void main(){
  print("=====================\n");
  print("EMPLOYEE MANAGEMENT");
  print("=====================\n");
  
  print("Employee:");
  Employee em =Employee("Farhan", 10000111, 50000);
  em.displayInfo();
  print("Employee Total Yearly salary: ${em.yearlySalary()}\n");
  print("----------------------------");

  print("Manager:");
  Manager m1 =Manager("Karim", 2002, 52201, 10000);
  m1.displayInfo();
  print("Manager Yearly Salary: ${m1.yearlySalary()}\n");
    print("----------------------------\n");


  print("Developer:");
  Developer d1 =Developer("RRR", 101, 15000, "CPP");
  d1.displayInfo();
    print("----------------------------");




}

