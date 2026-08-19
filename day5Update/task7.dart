void main(){
List<int> numbers =[10, 15, 20, 25, 30, 35, 40] ;

var even =numbers.where((num){
  return num%2 == 0;
}).toList();

print("Even Number: $even");



}