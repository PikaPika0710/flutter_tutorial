import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Location')),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Center(child: Text('Location Page.')),
    );
  }
}
