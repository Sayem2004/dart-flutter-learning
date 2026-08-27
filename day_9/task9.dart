
Future< List< String>> fetchProducts(){
  return Future.delayed(Duration(seconds: 2),()=> ["iPhone", "MacBook", "AirPods"]);

}

void main ()async{
  print("Fetching products");
  List<String> ressult = await fetchProducts();
  print("Product");
  ressult.forEach((Product){
    print(Product);
  });
}