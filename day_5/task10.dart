void main(){
  List<int> numbers = [10, 20, 30, 40, 50];

  int result = numbers.reduce((a,b){
    return a+b;

  });

  print("Total: $result");
}