import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SimpleDialog Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Simple Dialog'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Option 2'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Option 3'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter SimpleDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSimpleDialog(context); // Call the function to show the SimpleDialog
          },
          child: Text('Show SimpleDialog'),
        ),
      ),
    );
  }
}
