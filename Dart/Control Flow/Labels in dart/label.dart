void main() {
  // Example 1: Using labels with a for loop
  outerLoop: // Label for the outer loop
  for (int i = 1; i <= 3; i++) {
    innerLoop: // Label for the inner loop
    for (int j = 1; j <= 3; j++) {
      print('i: $i, j: $j');
      if (i == 2 && j == 2) {
        print('Breaking inner loop.');
        break innerLoop; // This will break only the inner loop
      }
    }
  }

  // Example 2: Using labels with a switch statement
  int number = 2;
  switchCase: // Label for the switch statement
  switch (number) {
    case 1:
      print('Number is 1');
      break;
    case 2:
      print('Number is 2');
      break switchCase; // This will break the switch statement
    case 3:
      print('Number is 3');
      break;
    default:
      print('Number is not 1, 2, or 3');
  }
}
