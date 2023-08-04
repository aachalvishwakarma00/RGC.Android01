import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue, // Set the primary color of the app
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue, // Set the primary color swatch
          accentColor: Colors.red, // Set the accent color used for buttons and other widgets
        ),
        fontFamily: 'Roboto', // Set the default font family for the app
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black), // Set default text style
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), // Set headline text style
        ),
      ),
      home: YourScreen(),
    );
  }
}

class YourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themed App Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: Theme.of(context).textTheme.headline1, // Using the headline1 text style
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
