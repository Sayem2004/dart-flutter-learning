void main(){
  List<Map<String, dynamic>> products = [
{"name": "Laptop", "price": 80000},
{"name": "Mouse", "price": 1500},
{"name": "Keyboard", "price": 3000},
{"name": "Monitor", "price": 25000}
];


var productName =products.map((item){
  return item["name"];
}).toList();
print(productName);

var productCosting =products.where((price){
  return price["price"]>=5000;
}).toList();
print("Products costing more than 5,000: ");
productCosting.forEach((price){
  print(price["name"]);
});

var firstProMore20 =products.firstWhere((price){
  return price["price"]>=20000;
});
print("The first product costing more than 20,000: ${firstProMore20["name"]}");

var priceOnly = products.map((price){
  return price["price"];
});

var totalPrice = priceOnly.reduce((a,b){
  return a + b;
});
print("Total price: $totalPrice");

var highestPriceProduct = products .reduce((a,b){
  return a["price"]> b["price"] ? a:b;
});
print("The highest-priced product: ${highestPriceProduct["name"]}");



}


