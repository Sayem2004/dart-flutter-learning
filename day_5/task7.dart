void main(){
  List<int> numbers = [10, 15, 20, 25, 30, 35, 40];

  var result =numbers.where((number){
    return number%2 == 0;
  });

  print(result);


}