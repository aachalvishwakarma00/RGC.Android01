import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic>? data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      // Replace 'https://api.example.com/data' with your actual API endpoint
      final response = await http.get(Uri.parse('https://api.example.com/data'));

      if (response.statusCode == 200) {
        // If the call to the server was successful, parse the JSON
        final jsonData = jsonDecode(response.body);
        setState(() {
          data = jsonData;
        });
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load data');
      }
    } catch (e) {
      // Handle the exception if something goes wrong during the API call.
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Call Example'),
      ),
      body: data == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: data!.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data![index]['title']),
            subtitle: Text(data![index]['description']),
          );
        },
      ),
    );
  }
}
