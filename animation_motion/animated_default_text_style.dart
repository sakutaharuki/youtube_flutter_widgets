// Youtube URL: https://youtu.be/GjuW5Ecb8qo
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/material.dart';

/// How to change the text layout automatically.
/// 文字のレイアウトを自動的に変更する方法
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
      home: Scaffold(
        appBar: AppBar(title: const Text("AnimatedCrossFade")),
        body: const MyHomePage(),
      ),
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
    /// Tap Settings
    /// タップ時の設定
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: ListView(
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(20.0),
                child: const Text('Flutter'),
              ),
              style: selected
                  ? const TextStyle(
                      color: Colors.blue,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    )
                  : const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w100,
                      fontSize: 25,
                      letterSpacing: 2,
                    ),
              duration: const Duration(seconds: 10),
              curve: Curves.elasticOut,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.purple,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.heart_broken),
              iconSize: 40,
              color: Colors.white,
              onPressed: () {
                setState(() {
                  selected = !selected;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
