void main(){
  Set<int> number ={10, 20, 30, 20, 40, 10, 50};

  print(number);
  number.add(100);
  number.remove(40);
  print(number.contains(30));

  print(number);
}