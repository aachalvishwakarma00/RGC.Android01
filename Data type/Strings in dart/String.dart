void main() {
  // String declaration and initialization
  String message = "Hello, Dart!";

  // Printing the string
  print(message);

  // String concatenation
  String name = "Alice";
  String greeting = "Hello, " + name + "!"; // Concatenation using +
  String interpolatedGreeting = "Hello, $name!"; // String interpolation
  print(greeting);
  print(interpolatedGreeting);

  // Length of the string
  int messageLength = message.length;
  print("Length of the message: $messageLength");

  // String comparison
  String string1 = "apple";
  String string2 = "banana";
  bool areEqual = string1 == string2;
  print("Are strings equal? $areEqual");

  // Substrings
  String text = "Dart programming language";
  String subString1 = text.substring(0, 4); // Extracts characters from index 0 to 3 (exclusive)
  String subString2 = text.substring(5); // Extracts characters from index 5 to the end
  print("SubString 1: $subString1");
  print("SubString 2: $subString2");

  // Converting to uppercase and lowercase
  String upperCaseText = text.toUpperCase();
  String lowerCaseText = text.toLowerCase();
  print("Uppercase: $upperCaseText");
  print("Lowercase: $lowerCaseText");

  // Checking if a string contains a specific substring
  bool containsWord = text.contains("programming");
  print("Does the text contain the word 'programming'? $containsWord");

  // Replacing parts of a string
  String replacedText = text.replaceAll("programming", "coding");
  print("Replaced text: $replacedText");
}
