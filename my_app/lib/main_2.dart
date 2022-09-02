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
      body: Center(

          // Button icons
          child: ElevatedButton.icon(
              onPressed: () => {print("You mailed me.")},
              icon: Icon(Icons.mail),
              label: Text("Mail me"))),

      // BUTTON
      //   child: ElevatedButton(
      // child: Text('Click'),
      // onPressed: () => {print('You clicked me.')},
      // style: ElevatedButton.styleFrom(
      //   textStyle: const TextStyle(fontSize: 20),
      //   backgroundColor: Colors.red[600],
      // ),

      // ICON
      //   child: Icon(
      // Icons.developer_mode,
      // color: Colors.blue[500],
      // size: 100.0,
      // )
      // )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
