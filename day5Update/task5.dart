void main(){
  List<int> numbers =[1, 2, 3,4,5];

  var num = numbers.map((number){
    return(number*2);
  }).toList();

  print(num);
}