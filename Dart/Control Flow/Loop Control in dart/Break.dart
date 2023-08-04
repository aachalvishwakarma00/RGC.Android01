void main() {
  // Example 1: Using break in a for loop
  for (int i = 1; i <= 10; i++) {
    print('Current number: $i');
    if (i == 5) {
      print('Breaking the loop.');
      break; // This will exit the loop when i equals 5
    }
  }

  // Example 2: Using break in a while loop
  int count = 1;
  while (true) {
    print('Current count: $count');
    if (count == 3) {
      print('Breaking the loop.');
      break; // This will exit the loop when count equals 3
    }
    count++;
  }

  // Example 3: Using break in a nested loop
  for (int i = 1; i <= 3; i++) {
    print('Outer loop: $i');
    for (int j = 1; j <= 2; j++) {
      print('Inner loop: $j');
      if (i == 2 && j == 1) {
        print('Breaking both loops.');
        break; // This will exit both loops when i equals 2 and j equals 1
      }
    }
  }
}
