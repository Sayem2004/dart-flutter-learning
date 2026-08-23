class Animal{
  void sound(){
    print("Animal Sound");
  }
}
class Dog extends Animal{
  @override
  void sound(){
    print("Barking");
  }
}
class Cat extends Animal{
  @override
  void sound(){
    print("Meow");
  }

}
void main(){
  Dog dog =Dog();
  Cat cat =Cat();

  dog.sound();
  cat.sound();
}