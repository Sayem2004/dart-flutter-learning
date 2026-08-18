void main(){

List<Map<String, dynamic>> products = [
{"name": "Laptop", "price": 80000},
{"name": "Mouse", "price": 1500},
{"name": "Keyboard", "price": 3000},
{"name": "Monitor", "price": 25000}
];


var productName =products.map((product){
  return product["name"];
}).toList();
print("Product Names$productName");

var productCost =products.where((product){
  return product["price"]>=5000;
}).toList();
print("\nProducts over 5000: $productCost");

var fastProduct = products.firstWhere((product){
  return product["price"]>=20000;
});
print("\nFirst product over 20000: $fastProduct");

var highestProduct = products.reduce((a, b) {
    return a["price"] > b["price"] ? a : b;
  });

  print("\nHighest-priced Product: $highestProduct");



}