import 'dart:io';

void greetUser([String? name ="Guest" ]){
  if(name== ""){
    name = "Guest";
  }

  print("Hello :$name");

}


void main(){
  print("Enter Your name: ");
  String? name = stdin.readLineSync();
 greetUser(name);
  


}