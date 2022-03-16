// Youtube URL: https://youtu.be/J18BK81hyJs
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

/// How to display widgets horizontally.（ウィジェットを横に表示する方法）
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
        // Row settings from here.（ここから Row の設定）
        child: Row(
          /// Can determine position, etc.（位置などを決められる）
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,

          /// The widget you want to display.（表示したいウィジェット）
          children: <Widget>[
            Container(
              color: Colors.lightBlueAccent,
              height: 400,
              width: 50,
            ),
            Container(
              color: Colors.purple,
              height: 500,
              width: 50,
            ),
            Container(
              color: Colors.orangeAccent,
              height: 400,
              width: 50,
            ),
            const Text(
              'Row',
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

