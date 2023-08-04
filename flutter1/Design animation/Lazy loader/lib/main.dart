import 'package:flutter/material.dart';


import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LazyLoaderScreen(),
    );
  }
}

class LazyLoaderScreen extends StatefulWidget {
  @override
  _LazyLoaderScreenState createState() => _LazyLoaderScreenState();
}

class _LazyLoaderScreenState extends State<LazyLoaderScreen> {
  List<int> _data = [];
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _generateRandomData(10); // Load initial data
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _generateRandomData(int count) {
    final random = Random();
    for (int i = 0; i < count; i++) {
      _data.add(random.nextInt(1000));
    }
  }

  void _loadMoreData() {
    // Simulate loading more data with a small delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _generateRandomData(5); // Load 5 more random numbers
      });
    });
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      // When reaching the end of the list, load more data
      _loadMoreData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lazy Loader Example'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Number: ${_data[index]}'),
          );
        },
      ),
    );
  }
}
