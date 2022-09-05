import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data['country'].location);
    print(data['country'].flag);
    print(data['country'].time);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton.icon(
              label: Text('Edit Location'),
              icon: Icon(Icons.edit_location),
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
            )
          ],
        ),
      ),
    );
  }
}
