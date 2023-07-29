import 'package:flutter/material.dart';


import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staggered Grid View Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered Grid View Example'),
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4, // Number of columns in the grid
        itemCount: 20, // Total number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          // Generate a random height for each tile
          double tileHeight = Random().nextInt(200).toDouble() + 100;
          return Container(
            color: Colors.teal,
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
        staggeredTileBuilder: (int index) {
          // Generate a staggered tile with random height for each item
          int crossAxisCellCount = index.isEven ? 1 : 2;
          double mainAxisCellCount = index.isEven ? 1.5 : 1;
          return StaggeredTile.count(crossAxisCellCount, mainAxisCellCount);
        },
        mainAxisSpacing: 8.0, // Vertical spacing between tiles
        crossAxisSpacing: 8.0, // Horizontal spacing between tiles
      ),
    );
  }
}
