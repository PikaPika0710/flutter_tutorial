import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String vietnamNow = 'loading...';
  void setUpWorldTime() async {
    WorldTime vietnam = new WorldTime(
        location: 'vietnam', flag: 'vietnam.png', url: 'Asia/Ho_Chi_Minh');
    await vietnam.getTime();
    setState(() {
      vietnamNow = vietnam.time;
    });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      // 'location': vietnam.location,
      // 'flag': vietnam.flag,
      // 'time': vietnam.time
      'country': vietnam,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
              child: Text(
            'VietNam: ${vietnamNow}',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
          ))),
    );
  }
}
