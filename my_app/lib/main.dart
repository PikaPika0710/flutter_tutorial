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
        // child: Text(
        //   "Hello VietDev",
        //   style: TextStyle(
        //     fontSize: 20.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.grey[600],
        //     fontFamily: 'IndieFlower',
        //   ),
        // ),

        // child: Image(
        //     image:
        //         // NetworkImage(
        //         // 'https://images.wallpaperscraft.com/image/single/space_extraterrestrial_mountains_125431_320x480.jpg'),
        //         // AssetImage('assets/images/universe-2.jpg'))
        //     ),

        // child: Image.asset('assets/images/universe.jpg'),
        child: Image.network(
            'https://images.wallpaperscraft.com/image/single/space_extraterrestrial_mountains_125431_320x480.jpg'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
