void main() {
  // Example 1: Using continue in a for loop
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      print('Skipping iteration $i');
      continue; // This will skip the rest of the loop body and move to the next iteration
    }
    print('Current number: $i');
  }

  // Example 2: Using continue in a while loop
  int count = 1;
  while (count <= 5) {
    if (count == 2 || count == 4) {
      print('Skipping iteration $count');
      count++;
      continue; // This will skip the rest of the loop body and move to the next iteration
    }
    print('Current count: $count');
    count++;
  }
}
