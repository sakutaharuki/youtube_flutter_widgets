// Youtube URL: https://youtu.be/TIiUGY3p0H8
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'dart:math' as math;

import 'package:flutter/material.dart';

/// How to create a basic animation.
/// アニメーションの基本の作り方
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

class _MyHomePage extends State<MyHomePage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder'),
      ),

      /// Animation Settings
      /// アニメーションの設定
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 250.0,
            height: 250.0,
            color: Colors.orange,
            child: const Center(
              child: Text(
                '回っちゃうぞ',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
