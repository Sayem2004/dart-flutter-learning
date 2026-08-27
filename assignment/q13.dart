void main(){
  List<int> numbers = [10, 25, 30, 45, 50, 65, 70];

 var even = numbers.where((number){
  return number%2==0;

 });

 var odd = numbers.where((number){
  return number%2 !=0;
 });

var sum =numbers.reduce((a,b){
  return a+b;
});

var avg =sum/ numbers.length;

var higest =numbers.reduce((a,b){
  return a>b ? a:b;
});



 print("All Even number: $even");
 print("All odd number: $odd");
 print("Sum: $sum");
 print("Average: $avg");
 print("Highest Number: $higest");

}