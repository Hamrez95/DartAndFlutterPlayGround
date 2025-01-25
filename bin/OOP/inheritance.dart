// 1. Single Inheritance
// class Animal {
//   String name = '';

//   void eat() {
//     print('$name is eating.');
//   }
// }

// class Dog extends Animal {
//   void bark() {
//     print('$name is barking.');
//   }
// }

// void main() {
//   Dog dog = Dog();
//   dog.name = 'Buddy';
//   dog.eat(); // Inherited from Animal
//   dog.bark(); // Defined in Dog
// }

// 2. Method Overriding
// class Animal {
//   void sound() {
//     print('Animal makes a sound.');
//   }
// }

// class Cat extends Animal {
//   @override
//   void sound() {
//     print('Cat meows.');
//   }
// }

// void main() {
//   Animal animal = Animal();
//   animal.sound();

//   Cat cat = Cat();
//   cat.sound(); // Overridden method
// }

// 3. Using super Keyword
// class Animal {
//   void sound() {
//     print('Animal makes a sound.');
//   }
// }

// class Dog extends Animal {
//   @override
//   void sound() {
//     super.sound(); // Calls the parent class's sound method
//     print('Dog barks.');
//   }
// }

// void main() {
//   Dog dog = Dog();
//   dog.sound();
// }

