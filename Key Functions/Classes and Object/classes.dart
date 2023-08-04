class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method to introduce the person
  void introduceYourself() {
    print("Hello, my name is $name, and I am $age years old.");
  }
}

void main() {
  // Creating an object of the Person class
  var person1 = Person("Alice", 30);

  // Accessing the properties using the object
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");

  // Calling the introduceYourself method
  person1.introduceYourself();

  // Creating another object of the Person class
  var person2 = Person("Bob", 25);

  // Accessing the properties using the object
  print("Name: ${person2.name}");
  print("Age: ${person2.age}");

  // Calling the introduceYourself method for the second person
  person2.introduceYourself();
}
