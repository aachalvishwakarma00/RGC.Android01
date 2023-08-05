import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isScreenAwake = false;

  void _toggleScreenWakeLock() {
    setState(() {
      _isScreenAwake = !_isScreenAwake;
    });

    if (_isScreenAwake) {
      Wakelock.enable();
    } else {
      Wakelock.disable();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WakeLock Example'),
      ),
      body: Center(
        child: Text(
          'Tap the button to toggle screen wake lock.',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleScreenWakeLock,
        child: Icon(_isScreenAwake ? Icons.lock_open : Icons.lock),
      ),
    );
  }
}
