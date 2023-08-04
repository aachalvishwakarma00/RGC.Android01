import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress Indicators Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = false;

  void _startLoading() {
    setState(() {
      _isLoading = true;
    });

    // Simulating a time-consuming task with a delayed timer
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicators Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _startLoading,
              child: Text('Start Loading'),
            ),
            SizedBox(height: 20),
            _isLoading
                ? CircularProgressIndicator() // Show circular progress indicator when loading
                : SizedBox(), // Empty space when not loading
            SizedBox(height: 20),
            _isLoading
                ? LinearProgressIndicator() // Show linear progress indicator when loading
                : SizedBox(), // Empty space when not loading
          ],
        ),
      ),
    );
  }
}
