// Define the interface as an abstract class
abstract class Shape {
  double area(); // Abstract method (method declaration without implementation)
}

// Concrete class implementing the Shape interface
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Concrete class implementing the Shape interface
class Rectangle implements Shape {
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

  print("Circle Area: $circleArea"); // 
  print("Rectangle Area: $rectangleArea"); // 
}
