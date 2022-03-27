// Youtube URL: https://youtu.be/pGfC_I9xwX0
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）


import 'package:flutter/material.dart';

/// How to add an explanation of the meaning of a widget to the widget tree
/// （ウィジェットの意味の説明をウィジェットツリーにつける方法）
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
        title: const Text('Semantics'),
      ),
      body: Center(
        child: Semantics(
          label: 'Square Widgets（正方形のウィジェット）',
          // More than 50 other properties can be attached.
          // 他にも50を超えるプロパティをつけることができる
          child: Container(
            color: Colors.orangeAccent,
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
