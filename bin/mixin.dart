//Mixins are a way to reuse code across multiple class hierarchies. Use the with keyword.
mixin Swimmer {
  void swim() {
    print('Swimming...');
  }
}

class Dolphin with Swimmer {}

void main() {
  var dolphin = Dolphin();
  dolphin.swim(); // Output: Swimming...
}
