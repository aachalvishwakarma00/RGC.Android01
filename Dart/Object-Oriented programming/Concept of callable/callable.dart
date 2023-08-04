class Adder {
  int _base;

  // Constructor to set the base value
  Adder(this._base);

  // The call() method, which makes the class callable
  int call(int value) {
    return _base + value;
  }
}

void main() {
  // Creating an instance of the callable class
  var addFive = Adder(5);

  // Using the instance as if it were a function
  int result = addFive(10); // Calls the call() method

  print("Result: $result"); // 
}
