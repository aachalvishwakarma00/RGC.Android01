import 'package:flutter/material.dart';


import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('URLs in Flutter'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => _openURL('https://s.amizone.net/'),
            child: Text('Open URL'),
          ),
        ),
      ),
    );
  }

  void _openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
