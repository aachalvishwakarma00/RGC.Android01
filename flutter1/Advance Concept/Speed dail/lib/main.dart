import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAB Speed Dial Example'),
      ),
      // Add a floating action button (FAB) with speed dial
      floatingActionButton: SpeedDial(
        // Both default and active foreground colors can be specified with activeFg and fg properties respectively.
        activeForegroundColor: Colors.white,
        foregroundColor: Colors.white,
        // Specify the icon for the main FAB
        icon: Icons.add,
        // Specify the list of options for the speed dial
        children: [
          SpeedDialChild(
            child: Icon(Icons.email),
            label: 'Email',
            onTap: () => print('Email tapped!'),
          ),
          SpeedDialChild(
            child: Icon(Icons.phone),
            label: 'Call',
            onTap: () => print('Call tapped!'),
          ),
          SpeedDialChild(
            child: Icon(Icons.message),
            label: 'Message',
            onTap: () => print('Message tapped!'),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Press the FAB to expand the Speed Dial',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
