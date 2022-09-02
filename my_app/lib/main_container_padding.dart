import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first project'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Padding(
          child: Text('My first project'),
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0)),

      // Container(
      //   child: Text('Hello, world!'),
      //   padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      //   margin: EdgeInsets.all(10.0),
      //   color: Colors.amber[500],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
