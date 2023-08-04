// Abstract class
abstract class Shape {
  double area(); // Abstract method (method declaration without implementation)
}

// Concrete subclass implementing the Shape abstract class
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Concrete subclass implementing the Shape abstract class
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  // Creating objects of the concrete classes
  var circle = Circle(5);
  var rectangle = Rectangle(4, 6);

  // Calling the area method on the objects
  double circleArea = circle.area();
  double rectangleArea = rectangle.area();

  print("Circle Area: $circleArea"); // Output: Circle Area: 78.5
  print("Rectangle Area: $rectangleArea"); // Output: Rectangle Area: 24.0
}
