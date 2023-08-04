class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  double divide(int a, int b) {
    if (b == 0) {
      throw ArgumentError("Cannot divide by zero");
    }
    return a / b;
  }
}

void main() {
  // Creating an object of the Calculator class
  var calculator = Calculator();

  // Calling instance methods on the calculator object
  int sum = calculator.add(5, 3);
  int difference = calculator.subtract(10, 6);

  print("Sum: $sum"); // Output: Sum: 8
  print("Difference: $difference"); // Output: Difference: 4

  // Calling divide method with error handling
  try {
    double result = calculator.divide(10, 2);
    print("Result: $result"); // Output: Result: 5.0

    double invalidResult = calculator.divide(10, 0); // Throws an error
    print("Invalid Result: $invalidResult");
  } catch (e) {
    print("Error: ${e.toString()}"); // Output: Error: ArgumentError: Cannot divide by zero
  }
}
