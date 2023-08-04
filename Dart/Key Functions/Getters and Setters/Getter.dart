class Person {
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Getter for the name property
  String get name {
    return _name;
  }

  // Getter for the age property
  int get age {
    return _age;
  }
}
void main() {
  var person = Person("Alice", 30);

  // Using the getter to access the name and age properties
  print("Name: ${person.name}");
  print("Age: ${person.age}");
}
