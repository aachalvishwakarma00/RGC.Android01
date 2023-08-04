// Superclass (Base class)
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print("Animal makes a sound");
  }
}

// Subclass (Derived class)
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  // Overriding the makeSound method in the superclass
  @override
  void makeSound() {
    print("Dog barks: Woof Woof!");
  }
}

// Subclass (Derived class)
class Cat extends Animal {
  Cat(String name, int age) : super(name, age);

  // Overriding the makeSound method in the superclass
  @override
  void makeSound() {
    print("Cat meows: Meow Meow!");
  }
}

void main() {
  // Creating objects of the derived classes
  var dog = Dog("Buddy", 2, "Labrador");
  var cat = Cat("Whiskers", 3);

  // Calling methods of the base class
  dog.makeSound(); // Output: Dog barks: Woof Woof!
  cat.makeSound(); // Output: Cat meows: Meow Meow!

  // Accessing properties from the base class
  print("Dog: ${dog.name}, Breed: ${dog.breed}"); // Output: Dog: Buddy, Breed: Labrador
  print("Cat: ${cat.name}, Age: ${cat.age}"); // Output: Cat: Whiskers, Age: 3
}
