class Animal{
  String name ="Animal";
  void eat(){
    print("$name is eating");
  }
}

class Dog extends Animal{

  void bark(){
    print("$name is barking");
  }
}
class Cat extends Animal{
  void meow(){
    print("$name is meowing");
  }
}

void main(){
  Dog dog =Dog();
  Cat cat =Cat();
  dog.name = "Black Dog";
  dog.eat();
  dog.bark();

  cat.name ="banny";
  cat.eat();
  cat.meow();
}