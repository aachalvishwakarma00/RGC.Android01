import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YourScreen(),
    );
  }
}

class YourScreen extends StatefulWidget {
  @override
  _YourScreenState createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate an asynchronous data loading process
    // For demonstration purposes, we will simulate a 2-second delay
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skeleton Text Example'),
      ),
      body: isLoading ? SkeletonTextWidget() : YourActualContentWidget(),
    );
  }
}

class SkeletonTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        margin: EdgeInsets.all(16.0),
        width: double.infinity,
        height: 20.0,
        color: Colors.white, // Color of the container for the shimmer effect
      ),
    );
  }
}

class YourActualContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Your actual content here',
        style: TextStyle(fontSize: 24.0),
      ),
    );
  }
}
