import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Fonts'),
          backgroundColor: Colors.green,
        ), // AppBar
        body: const SafeArea(
          child: Center(
            child: Text(
              'Welcome to Font!',
              style: TextStyle(
                fontFamily: 'Handjet-Bold.ttf',
                fontSize: 40.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),// TextStyle
            ),// Text
          ),// Center
        ),// SafeArea
      ),// Scaffold
    );// MaterialApp
  }
}
