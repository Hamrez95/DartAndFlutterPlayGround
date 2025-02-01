class Animal {
  void makeSound() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

void main() {
  Animal animal = Dog();
  animal.makeSound(); // Output: Woof!
}
