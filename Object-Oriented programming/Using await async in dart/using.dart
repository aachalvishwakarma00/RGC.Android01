import 'dart:async';

// Simulated function to fetch user data from a server with a delay
Future<String> fetchUserData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "User data fetched successfully!";
  });
}

void main() async {
  print("Fetching user data...");
  
  // Call the asynchronous function using await
  String userData = await fetchUserData();
  
  print(userData);
  print("Data fetching completed.");
}
