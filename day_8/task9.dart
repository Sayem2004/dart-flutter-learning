abstract class Product {
  String name = "";
  double price = 0;

  void displayProduct();
  double calculateDiscount(double percen);
}
class PhysicalProduct extends Product {
  double weight = 0;
  
  PhysicalProduct(String name, double price, this.weight){
    this.name =name;
    this.price =price;
  }
  @override
  double calculateDiscount(double percen){
    return price - (price * (percen / 100));
  }
  @override
  void displayProduct() {
    print("Physical product: $name");
    print("Price: $price");
    print("Weight: $weight");
    print("Price after 10% discount: ${calculateDiscount(10)}\n");
  }
}
class DigitalProduct extends Product {
  double fileSize;
  DigitalProduct(String name, double price, this.fileSize) {
    this.name = name;
    this.price = price;
  }

  @override
  double calculateDiscount(double percentage) {
    return price - (price * (percentage / 100));
  }

  @override
  void displayProduct() {
    print("Digital Product: $name");
    print("Price: $price");
    print("Fil size: $fileSize mb");
    print("Price after 20% discount: ${calculateDiscount(20)}");
  }
}
void main() {
  PhysicalProduct laptop = PhysicalProduct("MacBook Pro", 2000.0, 1.6);
  DigitalProduct onlineBook = DigitalProduct("Dart OOP Mastery Guide", 25.0, 15.5);

  laptop.displayProduct();
  onlineBook.displayProduct();
  }