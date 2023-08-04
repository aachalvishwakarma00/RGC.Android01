void main() {
  // Creating a set of integers
  Set<int> numbersSet = {1, 2, 3, 4, 5};

  // Printing the set
  print("Set of numbers: $numbersSet");

  // Adding elements to the set
  numbersSet.add(6);
  numbersSet.add(7);
  print("Set after adding elements: $numbersSet");

  // Removing elements from the set
  numbersSet.remove(3);
  numbersSet.remove(5);
  print("Set after removing elements: $numbersSet");

  // Checking if an element is in the set
  bool containsTwo = numbersSet.contains(2);
  bool containsFive = numbersSet.contains(5);
  print("Set contains 2: $containsTwo"); // Output: true
  print("Set contains 5: $containsFive"); // Output: false

  // Getting the length of the set
  int length = numbersSet.length;
  print("Set length: $length");

  // Creating a set with the `Set` constructor
  Set<String> fruitsSet = Set.from(['apple', 'banana', 'orange']);
  print("Fruits set: $fruitsSet");

  // Set operations
  Set<int> setA = {1, 2, 3, 4};
  Set<int> setB = {3, 4, 5, 6};

  // Union of two sets
  Set<int> unionSet = setA.union(setB);
  print("Union of setA and setB: $unionSet"); // Output: {1, 2, 3, 4, 5, 6}

  // Intersection of two sets
  Set<int> intersectionSet = setA.intersection(setB);
  print("Intersection of setA and setB: $intersectionSet"); // Output: {3, 4}

  // Difference of two sets
  Set<int> differenceSet = setA.difference(setB);
  print("Difference of setA and setB: $differenceSet"); // Output: {1, 2}
}
