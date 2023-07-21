void main() {
  String sentence = "Hello, how are you today?";

  // Splitting the sentence using space as the delimiter
  List<String> words = sentence.split(" ");

  // Printing the individual words
  print("Individual words:");
  for (String word in words) {
    print(word);
  }

  // Splitting the sentence using a comma as the delimiter
  List<String> phrases = sentence.split(",");

  // Printing the individual phrases
  print("\nIndividual phrases:");
  for (String phrase in phrases) {
    print(phrase);
  }
}
