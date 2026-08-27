Future<String> login(){
  throw Exception();

}
void main()async{
  print("logging in");
  try{
    String result = await login();
    print(result);
  }
  catch(e){
     print("Login faield");
  }
}