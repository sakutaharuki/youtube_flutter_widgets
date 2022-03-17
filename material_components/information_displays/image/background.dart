// Youtube URL: https://youtu.be/4WRKOZFG7Dc
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

/// How to make the background an image（背景を画像にする方法）
/// First, create a file called images and make it available in pubspec.yaml. (the pubspec.yaml file is listed)
/// （最初に images というファイルを作成して pubspec.yaml で使えるようにしてください。（pubspec.yamlのファイルは載っています）

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
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
        )),
        child: const Center(
          child: Text(
            'good background!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
