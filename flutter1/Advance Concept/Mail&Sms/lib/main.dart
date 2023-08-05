import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
  void _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'recipient@example.com',
      queryParameters: {'subject': 'Hello from Flutter!', 'body': 'This is a test email sent from a Flutter app.'},
    );

    if (await canLaunch(emailLaunchUri.toString())) {
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Could not launch the email app.';
    }
  }

  void _sendSMS() async {
    final Uri smsLaunchUri = Uri(
      scheme: 'sms',
      path: '1234567890',
      queryParameters: {'body': 'This is a test SMS sent from a Flutter app.'},
    );

    if (await canLaunch(smsLaunchUri.toString())) {
      await launch(smsLaunchUri.toString());
    } else {
      throw 'Could not launch the SMS app.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail and SMS Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _sendEmail,
              child: Text('Send Email'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sendSMS,
              child: Text('Send SMS'),
            ),
          ],
        ),
      ),
    );
  }
}
