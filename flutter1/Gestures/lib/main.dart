import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GesturePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class GesturePage extends StatefulWidget {
  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  int _tapCount = 0;
  int _doubleTapCount = 0;

  void _handleTap() {
    setState(() {
      _tapCount++;
    });
  }

  void _handleDoubleTap() {
    setState(() {
      _doubleTapCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: _handleTap,
              onDoubleTap: _handleDoubleTap,
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.blue,
                child: Text(
                  'Tap me! \nTap Count: $_tapCount \nDouble Tap Count: $_doubleTapCount',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
