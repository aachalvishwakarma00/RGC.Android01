import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebSocketExample(),
    );
  }
}

class WebSocketExample extends StatefulWidget {
  @override
  _WebSocketExampleState createState() => _WebSocketExampleState();
}

class _WebSocketExampleState extends State<WebSocketExample> {
  final WebSocketChannel channel = IOWebSocketChannel.connect('ws://your_websocket_server_address');
  String receivedData = 'No data received';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebSocket Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(receivedData),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Send data to the server
                channel.sink.add('Hello, Server!');
              },
              child: Text('Send Data'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Close the WebSocket connection when the app is closed
    channel.sink.close();
    super.dispose();
  }
}
