//1. Default Constructor (Unnamed Constructor)

// class Person {
//   String name = '';
//   int age = 0;

//   // Default constructor
//   Person() {
//     print('Default constructor called');
//   }
// }

// void main() {
//   Person person = Person(); // Default constructor is called
// }

//2. Parameterized Constructor
// class Person {
//   String name;
//   int age;

//   // Parameterized constructor
//   Person(this.name, this.age);

//   void display() {
//     print('Name: $name, Age: $age');
//   }
// }

// void main() {
//   Person person = Person('Alice', 25);
//   person.display();
// }

//3. Named Constructor
// class Person {
//   String name;
//   int age;

//   // Named constructor
//   Person.withName(this.name) : age = 0;

//   Person.withAge(this.age) : name = 'Unknown';

//   void display() {
//     print('Name: $name, Age: $age');
//   }
// }

// void main() {
//   Person person1 = Person.withName('Bob');
//   Person person2 = Person.withAge(30);

//   person1.display();
//   person2.display();
// }

// 4. Factory Constructor
// class Singleton {
//   static Singleton? _instance;

//   // Factory constructor
//   factory Singleton() {
//     _instance ??= Singleton._internal();
//     return _instance!;
//   }

//   Singleton._internal(); // Private named constructor
// }

// void main() {
//   var obj1 = Singleton();
//   var obj2 = Singleton();
//   print(obj1 == obj2); // true (both references point to the same instance)
// }

// 5. Const Constructor
// class Point {
//   final int x, y;

//   // Const constructor
//   const Point(this.x, this.y);
// }

// void main() {
//   const point1 = Point(1, 2);
//   const point2 = Point(1, 2);
//   print(point1 == point2); // true (identical objects)
// }

//6. Redirecting Constructor
class Rectangle {
  int width, height;

  // Redirecting constructor
  Rectangle.square(int size) : this(size, size);

  Rectangle(this.width, this.height);
}

void main() {
  Rectangle square = Rectangle.square(10);
  print('Width: ${square.width}, Height: ${square.height}');
}

// 7. Initializer List Constructor
// class Point {
//   final int x, y;

//   // Initializer list constructor
//   Point(int a, int b)
//       : x = a,
//         y = b {
//     print('Initializer list executed');
//   }
// }

// void main() {
//   Point point = Point(3, 4);
//   print('Point: (${point.x}, ${point.y})');
// }

//8. Optional Parameters Constructor
//named parameters
// class Person {
//   String name;
//   int age;

//   Person({required this.name, this.age = 0});

//   void display() {
//     print('Name: $name, Age: $age');
//   }
// }

// void main() {
//   Person person = Person(name: 'Alice', age: 25);
//   person.display();
// }

//positional parameters
// class Person {
//   String name;
//   int age;

//   Person([this.name = 'Unknown', this.age = 0]);

//   void display() {
//     print('Name: $name, Age: $age');
//   }
// }

// void main() {
//   Person person = Person('Bob', 30);
//   person.display();
// }

// Summary of Key Features:

// Default Constructor:	Initializes an object with no args-	ClassName()
// Parameterized Constructor:	Pass parameters during creation-	ClassName(this.param)
// Named Constructor:	Multiple constructors in a class-	ClassName.constructorName()
// Factory Constructor:	Returns existing/new instance-	factory ClassName()
// Const Constructor:	Creates compile-time constant objects-	const ClassName()
// Redirecting Constructor:	Delegates to another constructor-	: this()
// Initializer List:	Initializes fields before body runs-	: field = value
// Optional Parameters:	Allows optional named/positional args-	{} or []
