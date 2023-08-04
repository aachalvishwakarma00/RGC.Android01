import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() => runApp(HingeAnimationApp());

class HingeAnimationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HingeAnimationScreen(),
    );
  }
}

class HingeAnimationScreen extends StatefulWidget {
  @override
  _HingeAnimationScreenState createState() => _HingeAnimationScreenState();
}

class _HingeAnimationScreenState extends State<HingeAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleDoor() {
    setState(() {
      _isOpen = !_isOpen;
      if (_isOpen) {
        _controller.forward(from: 0.0);
      } else {
        _controller.reverse(from: 1.0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hinge Animation')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: -_controller.value * (_isOpen ? 1.5 : 0.0),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: _toggleDoor,
                child: Image.asset('asset/nature.jpg'),
              ),
            );
          },
        ),
      ),
    );
  }
}
