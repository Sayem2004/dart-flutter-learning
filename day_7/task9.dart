class Product{
  String name ="";
  int price =0;
  int quantity=0;

  int calculateTotalPrice(){
    int total = price*quantity;
    return total;
  } 

  void displayProduct(){
    print("Product: $name");
    print("Price: $price");
    print("Quantity: $quantity");
    print("Total: ${calculateTotalPrice()}");
  }
}

void main(){
  Product pro =Product();
  pro.name="Laptop";
  pro.price= 80000;
  pro.quantity=2;
  pro.displayProduct();
  }