// Youtube URL: https://youtu.be/fNvwbc03H0Y
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thanks for watching'),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          /// To scroll horizontally, use the following to make Column a Row.
          /// （横にスクロールする場合は以下を使い、ColumnをRowにする）
          // scrollDirection: Axis.horizontal,
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                // width: 200,
                color: Colors.lightBlueAccent,
              ),
              Container(
                height: 300,
                // width: 200,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                height: 250,
                // width: 200,
                color: Colors.purple,
              ),
              Container(
                height: 200,
                // width: 200,
                color: Colors.deepOrangeAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
