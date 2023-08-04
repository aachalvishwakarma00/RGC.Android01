void main() {
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [4, 5, 6];
  List<int> list3 = [7, 8, 9];

  // Method 1: Using addAll() method
  List<int> combinedList1 = [];
  combinedList1.addAll(list1);
  combinedList1.addAll(list2);
  combinedList1.addAll(list3);

  print("Combined List 1: $combinedList1"); // Output: Combined List 1: [1, 2, 3, 4, 5, 6, 7, 8, 9]

  // Method 2: Using the spread operator (...)
  List<int> combinedList2 = [...list1, ...list2, ...list3];

  print("Combined List 2: $combinedList2"); // Output: Combined List 2: [1, 2, 3, 4, 5, 6, 7, 8, 9]

  // Method 3: Using the + operator
  List<int> combinedList3 = list1 + list2 + list3;

  print("Combined List 3: $combinedList3"); // Output: Combined List 3: [1, 2, 3, 4, 5, 6, 7, 8, 9]
}
