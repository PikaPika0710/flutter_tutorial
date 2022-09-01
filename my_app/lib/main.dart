import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
            title: const Text('My first project'),
            centerTitle: true,
        ),
        body: const Center(
          child: Text("Hello Viet Dev"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: const Text("Click"),
        ),
  ),
  ));

