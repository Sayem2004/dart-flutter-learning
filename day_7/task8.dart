import 'dart:math';

class Student{
 String name="";
int studentId=0;
double bangla =0;
double english =0;
double math =0;
double science =0;

double calculateTotal(){
   double total =bangla+ english +math+science;
   return total;
}



double calculateAverage(){
  double total = calculateTotal();
  double avg =total/4;
  return avg;
}


String calculateGrade(){
  double avg =calculateAverage();
    if (avg >= 80) {
      return "A+";
    } 
    else if (avg >= 70) {
      return "A";
    } 
    else if (avg >= 60) {
      return "B";
    } 
    else if (avg >= 50) {
      return "C";
    } 
    else if (avg >= 40) {
      return "D";
    } 
    else {
      return "F";
    }
}
void displayResult() {
    print("====================");
    print("STUDENT RESULT");
    print("=====================");
    print("Name: $name");
    print("ID: $studentId \n");
    print("Total: ${calculateTotal()}");
    print("Average: ${calculateAverage()}");
    print("Grade: ${calculateGrade()}");
    print("================================");
  }

}
void main() {
  Student student = Student();
  student.name = "Rahim";
  student.studentId = 48023;
  student.bangla = 80;
  student.english = 67;
  student.math = 80;
  student.science = 55;
  student.displayResult();
}