class Person {
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter for the name property
  String get name {
    return _name;
  }

  // Setter for the name property
  set name(String newName) {
    _name = newName;
  }

  // Getter for the age property
  int get age {
    return _age;
  }

  // Setter for the age property
  set age(int newAge) {
    _age = newAge;
  }
}
void main() {
  var person = Person("Alice", 30);

  // Using the getter to access the name and age properties
  print("Name: ${person.name}");
  print("Age: ${person.age}");

  // Using the setter to update the name and age properties
  person.name = "Bob";
  person.age = 25;

  // Using the getter again to access the updated values
  print("Updated Name: ${person.name}");
  print("Updated Age: ${person.age}");
}

