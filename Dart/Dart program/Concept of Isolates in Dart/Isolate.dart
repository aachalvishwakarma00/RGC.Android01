import 'dart:isolate';

void main() {
  // Spawning a new isolate
  Isolate.spawn(printMessage, "Hello from Isolate 1");
  Isolate.spawn(printMessage, "Hello from Isolate 2");

  print("Main Isolate is still executing...");
}

void printMessage(String message) {
  print("Message: $message");
}
