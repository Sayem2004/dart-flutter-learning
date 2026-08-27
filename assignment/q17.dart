void main(){
  List<Map<String, dynamic>> products= [ 
{"name": "Laptop", "price": 80000}, 
{"name": "Mouse", "price": 1500}, 
{"name": "Keyboard", "price": 3000}, 
{"name": "Monitor", "price": 25000} 
];


var price =products.where((product){
  return product["price"]>5000;
});
print(" all products with a price greater than 5000: ");
price.forEach((product){
  print(product["name"]);
});

var expensiveProduct =products.reduce((a,b){   
  return a["price"]> b["price"]? a:b; 
  });
print("Most Expensive Product: ${expensiveProduct["name"]}");

  var sumPrice = products.map((product) {
    return product["price"];
  }).reduce((a, b) {
    return a + b;
  });
  print("Total price of all products: $sumPrice");

var productName = products.map((product){
  return product["name"];
}).toList();
print("Only product name: $productName");

}