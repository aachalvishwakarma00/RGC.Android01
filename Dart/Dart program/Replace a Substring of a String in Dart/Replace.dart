void main() {
  String originalString = "Hello, world!";
  String substringToReplace = "world";
  String replacement = "universe";

  // Replace only the first occurrence of the substring
  String replacedStringFirst = originalString.replaceFirst(substringToReplace, replacement);
  print("Original String: $originalString");
  print("Replaced String (First): $replacedStringFirst");

  // Replace all occurrences of the substring
  String replacedStringAll = originalString.replaceAll(substringToReplace, replacement);
  print("Replaced String (All): $replacedStringAll");
}
