void main() {
  try {
    // Code that may throw an exception
    int result = divide(10, 0);
    print("Result: $result"); // This line won't be executed if an exception occurs
  } catch (e) {
    // Catch block to handle the exception
    print("Exception caught: $e");
  } finally {
    // Finally block always executes, regardless of whether an exception occurred or not
    print("Finally block executed");
  }

  print("Program continues after exception handling");
}

int divide(int a, int b) {
  if (b == 0) {
    throw Exception("Cannot divide by zero!");
  }
  return a ~/ b;
}
