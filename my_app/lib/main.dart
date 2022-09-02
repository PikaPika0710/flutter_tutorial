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
      body: Row(children: <Widget>[
        Expanded(flex: 3, child: Image.asset('assets/images/universe.jpg')),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Text('1'),
            color: Colors.amber,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Text('2'),
            color: Colors.red,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Text('3'),
            color: Colors.blue,
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
