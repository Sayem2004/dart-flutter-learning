class User{
int id;
String name;
String? email;
int? phone;
User(this.id, this.name, this.email, this.phone);
}

Future<User?>fethUser(){
  return Future.delayed(Duration(seconds: 2),()=>User(101, "Sakib", null, null));

}

Future <void> loadUser()async{
  late String message;
  try{
    User? user = await fethUser();
    message = "User loaded ";
    print(message);
    print("Name: ${user?.name}");
    print("Email: ${user?.email ??"Email not available"}");
    print("Phone: ${user?.phone ??" phone not availavle"}");
  }
  catch(e){
    print("Failed");
  }
}

void main()async{
await loadUser();
}