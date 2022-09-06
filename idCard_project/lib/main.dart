import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Center(child: Text('VietDev ID Card')),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(height: 60.0, color: Colors.amber),
              Text('NAME',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 5.0,
              ),
              Text('Tran Viet',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Text('DOB',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 5.0,
              ),
              Text('07/10/2001',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Text('ADDRESS',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 5.0,
              ),
              Text('Dien Ban - Quang Nam',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Text('JOBS',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                    letterSpacing: 2.0,
                  )),
              SizedBox(
                height: 5.0,
              ),
              Text('Fullstack Developer, Freelancer',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  )),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.blue, size: 20.0),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('trancongviet0710@gmail.com',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
