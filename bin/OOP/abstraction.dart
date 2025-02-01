//abstraction
abstract class Shape {
  void draw(); // Abstract method

  void info() {
    print('This is a shape.');
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle.');
  }
}

// void main() {
//   var circle = Circle();
//   circle.draw(); // Output: Drawing a circle.
//   circle.info(); // Output: This is a shape.
// }

//interface
//In Dart, you don't need to explicitly define an interface using a keyword like interface in C#. Any class can act as an interface.
class Animal {
  void eat() {
    print('Eating...');
  }
}

class Dog implements Animal {
  @override
  void eat() {
    print('Dog is eating...');
  }
}

void main() {
  var animal = Animal();
  animal.eat();

  var dog = Dog();
  dog.eat(); // Output: Dog is eating...
}
