// Youtube URL: https://youtu.be/Gj3UyafbSlQ
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

/// How to set up the AppBar.（AppBar を設定する方法）
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
      /// Set AppBar here.（ここで AppBar を設定）
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
    );
  }
}
