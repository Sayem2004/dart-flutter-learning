
void main(){
 String? username;
 print(username?? "Guest");

 username = "Khairul";
 print(username??"guest");
}