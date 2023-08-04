// Superclass
class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

// Subclass
class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog barks: Woof Woof!");
  }

  void fetch() {
    print("Dog fetches the ball");
  }
}

// Subclass
class Cat extends Animal {
  @override
  void makeSound() {
    print("Cat meows: Meow Meow!");
  }

  void scratchFurniture() {
    print("Cat scratches the furniture");
  }
}

void main() {
  // Creating objects of the subclasses
  var dog = Dog();
  var cat = Cat();

  // Calling overridden methods
  dog.makeSound(); // Output: Dog barks: Woof Woof!
  cat.makeSound(); // Output: Cat meows: Meow Meow!

  // Calling subclass-specific methods
  dog.fetch(); // Output: Dog fetches the ball
  cat.scratchFurniture(); // Output: Cat scratches the furniture
}
