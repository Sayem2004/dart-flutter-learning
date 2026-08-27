class User {
  String name;
  String email;

  User(this.name, this.email);

}
void main(){
    User? user;

    print(user?.name);
    print(user?.email);

    user = User("Rahim", "ad@gmail.com");
    print(user?.name);
    print(user?.email);


}
