// Youtube URL:  
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/material.dart';

/// How to create a letter template to make things easier.
/// （文字のテンプレートを作って楽をする方法）
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
        title: const Text('DefaultTextStyle'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Set up the text first (can be changed later)
          /// （最初にテキストの設定をする（後から変更可能））
          DefaultTextStyle(
            style: TextStyle(fontSize: 150, color: Colors.blue),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'First',
                  ),
                  Text(
                    'Second',
                    style: TextStyle(fontSize: 70),
                  ),
                  Text(
                    'Third',
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
