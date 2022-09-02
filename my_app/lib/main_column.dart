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
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Hello world.'),
                Text(' Im Viet Dev'),
              ],
            ),
            Container(
              child: Text('one'),
              color: Colors.amber,
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              child: Text('two'),
              color: Colors.pink,
              padding: EdgeInsets.all(20.0),
            ),
            Container(
              child: Text('three'),
              color: Colors.green,
              padding: EdgeInsets.all(30.0),
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
