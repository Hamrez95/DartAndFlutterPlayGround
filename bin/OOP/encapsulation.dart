//Use _ (underscore) to make a field or method private.

class BankAccount {
  double _balance = 0; // Private field

  void deposit(double amount) {
    _balance += amount;
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  var account = BankAccount();
  account.deposit(100);
  print(account.getBalance()); // Output: 100.0
}

//get set
class Rectangle {
  double width, height;

  Rectangle(this.width, this.height);

  // Getter
  double get area => width * height;

  // Setter
  set scale(double factor) {
    width *= factor;
    height *= factor;
  }
}

// void main() {
//   var rect = Rectangle(10, 20);
//   print(rect.area); // Output: 200.0
//   rect.scale = 2;
//   print(rect.area); // Output: 800.0
// }
