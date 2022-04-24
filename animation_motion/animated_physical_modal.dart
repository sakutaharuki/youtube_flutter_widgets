// Youtube URL: https://youtu.be/opdCRNedn90
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/material.dart';

/// How to add shadows in animation.
/// アニメーションで影をつける方法
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
        appBar: AppBar(title: const Text('AnimatedPhysicalModel')),
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
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /// Animation Settings
        /// アニメーションの設定
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          elevation: _first ? 0 : 6.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.white,
          borderRadius: _first
              ? const BorderRadius.all(Radius.circular(0))
              : const BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 300.0,
            width: 300.0,
            color: Colors.blue[50],
            child: const FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
      // Button
      // ボタン
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _first = !_first;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

// Youtube URL: https://youtu.be/FCMw_IMxGBs
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

/// How to change color in animation.
/// アニメーションで色と形を変更する方法
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
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedPhysicalModel')),
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
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedPhysicalModel(
          duration: Duration(seconds: 1),
          color: _first ? Colors.red : Colors.blue,
          elevation: _first ? 9 : 3,
          shape: BoxShape.rectangle,
          shadowColor: Colors.deepOrangeAccent,
          borderRadius: _first
              ? const BorderRadius.all(Radius.circular(0))
              : const BorderRadius.all(Radius.circular(24)),
          child: Container(
            width: 300,
            height: 300,
            child: const Center(
                child: Text(
              'チェンジするよ！',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
          ),
        ),
      ),
      // Button
      // ボタン
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _first = !_first;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

