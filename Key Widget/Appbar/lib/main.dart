import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(AUMApp()); //MaterialApp
}

MaterialApp AUMApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Mumbai"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      body: const Center(
        child: Text(
          "Welcome to Mumbai",
          style: TextStyle(fontSize: 24),
        ), //Text
      ), //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  );
}
