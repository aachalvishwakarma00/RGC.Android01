void main() {
  List<String> strings = ["apple", "banana", "orange", "grape", "kiwi"];

  // Find the minimum and maximum strings using the custom comparison function
  String minimumString = strings.reduce((value, element) => value.compareTo(element) < 0 ? value : element);
  String maximumString = strings.reduce((value, element) => value.compareTo(element) > 0 ? value : element);

  print("Minimum String: $minimumString"); // Output: Minimum String: apple
  print("Maximum String: $maximumString"); // Output: Maximum String: orange
}
