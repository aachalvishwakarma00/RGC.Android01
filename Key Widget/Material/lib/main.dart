import 'package:flutter/material.dart';



void main() {
  runApp(const AUMapp());
}

class AUMapp extends StatelessWidget {
  const AUMapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Mumbai',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.amberAccent,
      supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Welcome to Mumbai')),
      ),
    );
  }
}
