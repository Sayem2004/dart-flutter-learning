class Animal{
  void sound(){
    print("Animal Sound");
  }
}
class Dog extends Animal{
  @override
  void sound(){
    print("Dog sey Bark");
  }
}
class Cat extends Animal{
  @override
  void sound(){
    print("Cat say Meow");
  }

}
void main(){
  Animal animal1= Dog();
  Animal animal2 = Cat();

  animal1.sound();
  animal2.sound();

}