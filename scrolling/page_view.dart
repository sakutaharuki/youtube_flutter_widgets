// Youtube URL: https://youtu.be/zre3Gdf3IMI
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
      body: PageView(
        controller: PageController(),
        children: <Widget>[
          page1(context),
          page2(context),
        ],
      ),
    );
  }
}

Widget page1(BuildContext context) {
  return const Center(
    child: Text(
      'Page1',
      style: TextStyle(
        color: Colors.white,
        fontSize: 50.0,
      ),
    ),
  );
}

Widget page2(BuildContext context) {
  return const Center(
    child: Text(
      'Page2',
      style: TextStyle(
        color: Colors.white,
        fontSize: 50.0,
      ),
    ),
  );
}
