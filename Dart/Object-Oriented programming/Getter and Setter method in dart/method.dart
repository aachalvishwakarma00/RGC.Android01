class Person {
  String _name; // Private instance variable
  int _age; // Private instance variable

  // Constructor
  Person(this._name, this._age);

  // Getter for the name property
  String get name {
    return _name;
  }

  // Setter for the name property
  set name(String newName) {
    if (newName.length >= 2) {
      _name = newName;
    } else {
      print("Name must have at least 2 characters.");
    }
  }

  // Getter for the age property
  int get age {
    return _age;
  }

  // Setter for the age property
  set age(int newAge) {
    if (newAge >= 0 && newAge <= 120) {
      _age = newAge;
    } else {
      print("Age must be between 0 and 120.");
    }
  }
}

void main() {
  var person = Person("Alice", 30);

  // Using the getter to access the name and age properties
  print("Name: ${person.name}");
  print("Age: ${person.age}");

  // Using the setter to update the name and age properties
  person.name = "Bob";
  person.age = 150; // This will trigger the validation message for the age setter

  // Using the getter again to access the updated values
  print("Updated Name: ${person.name}");
  print("Updated Age: ${person.age}");
}
