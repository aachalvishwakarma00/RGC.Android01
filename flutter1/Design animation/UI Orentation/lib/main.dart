import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationScreen(),
    );
  }
}

class OrientationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Example'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: Text(
              orientation == Orientation.portrait
                  ? 'Portrait Mode'
                  : 'Landscape Mode',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
