void main() {
  int option = 2;

  switch (option) {
    case 1:
      print("Option 1 selected.");
      break;

    case 2:
    case 3:
      print("Option 2 or 3 selected.");
      // Intentional fall-through to the next case

    case 4:
      print("Option 4 selected.");
      break;

    default:
      print("Invalid option.");
  }
}
