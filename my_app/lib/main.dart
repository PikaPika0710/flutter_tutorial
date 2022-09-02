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
      body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Hello World'),
            ElevatedButton(
              child: Text('Hello World'),
              onPressed: () {},
            ),
            Container(
                child: Text('Hello World'),
                color: Colors.red[300],
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
