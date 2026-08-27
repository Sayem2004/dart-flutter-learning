void main(){
  String? username;
  print(username??= "Guest");
  username ="Rahim";
  print(username ??= "Guest");
}