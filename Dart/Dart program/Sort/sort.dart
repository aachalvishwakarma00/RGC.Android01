void main() {
  // Sorting in ascending order
  List<int> numbers = [5, 2, 8, 1, 3];
  numbers.sort();
  print("Ascending order: $numbers"); // 

  // Sorting in descending order
  List<int> numbersDescending = [5, 2, 8, 1, 3];
  numbersDescending.sort((a, b) => b.compareTo(a));
  print("Descending order: $numbersDescending"); // 
}
