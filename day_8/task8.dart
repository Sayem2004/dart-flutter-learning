mixin logger{

void log(String message){
  print(message);
}
}

class User with logger{}
class Product with logger{}
class Order with logger{}

void main(){
User ur =User();
Product prod = Product();
Order or =Order();

ur.log("Hello User");
prod.log("Product in ");
or.log("Conform Order");
}