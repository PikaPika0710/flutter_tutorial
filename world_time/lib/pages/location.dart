import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'VietDev';
    });
    print(username);
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Web Developer, Freelancer';
    });
    print(bio);
    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Init Function called.');
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('Build Function called.');
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Location')),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Column(
        children: [
          Center(child: Text('$count')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('add'))
        ],
      ),
    );
  }
}
