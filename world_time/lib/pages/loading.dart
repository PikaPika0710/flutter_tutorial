import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Ho_Chi_Minh'));
    Map data = jsonDecode(response.body);
    DateTime now = DateTime.parse(data['datetime']);
    now =
        now.add(Duration(hours: int.parse(data['utc_offset'].substring(1, 3))));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Page'),
    );
  }
}
