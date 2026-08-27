Future<int>calculateNumber(){
  return Future.delayed(Duration(seconds: 2),()=>100);
}
void main()async{
  print("Calculation started");
  int result = await calculateNumber();
  print("Result: $result");
  print("Calculation finished");


}