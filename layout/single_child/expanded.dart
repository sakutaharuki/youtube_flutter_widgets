/// How to fill gaps between widgets.
/// （ウィジェット間の隙間を埋める方法）
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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.lightBlueAccent,
              height: 100,
              width: 300,
            ),

            /// Expanded allows widgets to be stretched to fill gaps.
            /// （Expanded でウィジェットを引き延ばして隙間を埋められる）
            Expanded(
              child: Container(
                color: Colors.purple,
                height: 100,
                width: 300,
              ),
            ),
            Container(
              color: Colors.orangeAccent,
              height: 100,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
