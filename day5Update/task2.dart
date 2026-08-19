void main(){
  Set<int> numbers ={10, 20, 30, 20, 40, 10, 50 };

  print(numbers);
  numbers.add(60);
  numbers.remove(10);
  print(numbers.contains(30));

  for(int number in numbers){
    print("$number");
  }

}