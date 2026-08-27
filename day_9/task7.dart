Future<String> getUserName() {
  return Future.delayed(Duration(seconds: 2),()=>"Rahim");
}

void main() async {
  print("Fetchin username");
  String name = await getUserName();

  print(name);
}