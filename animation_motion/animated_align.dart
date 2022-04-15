// Youtube URL: https://youtu.be/3oQFlPnxLQY
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/material.dart';

/// How to move icons automatically with a tap.
/// タップでアイコンを自動的に移動する方法
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign'),
      ),

      /// Tap Settings
      /// タップ時の設定
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },

        /// Animation Settings
        /// アニメーションの設定
        child: Center(
          child: Container(
            width: 300.0,
            height: 500.0,
            color: Colors.deepOrangeAccent,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 150.0),
            ),
          ),
        ),
      ),
    );
  }
}
