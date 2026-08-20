class Calculator {
int add(int a, int b){
  return a+b;
}
int subtract(int a, int b){
  return a-b;
}
int multiply(int a, int b){
  return a*b;
}
double divide(int a, int b){
  return a /b ;
}

}

void main(){
  Calculator cal =Calculator();
  print("Result: ${cal.add(10,20 )}");
  print("Result: ${cal.subtract(10,20 )}");
  print("Result: ${cal.multiply(10,20 )}");
  print("Result: ${cal.divide(10,20 )}");

}
