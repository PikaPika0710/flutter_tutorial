import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String vietnamNow = 'loading...';
  void setUpWorldTime() async {
    WorldTime vietnam = new WorldTime(
        location: 'VietNam', flag: 'vietnam.png', url: 'Asia/Ho_Chi_Minh');
    await vietnam.getTime();
    setState(() {
      vietnamNow = vietnam.time;
    });
    Navigator.pushReplacementNamed(context, '/home', arguments: {
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
        backgroundColor: Colors.blue,
        body: Center(
            child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        )));
  }
}
