// Youtube URL: https://youtu.be/LGg1sNjwpq0
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

/// To implement a basic Material Design visual layout structure.
/// （基本的なマテリアルデザインのビジュアルレイアウト構造を実装するためのもの）
/// This class providers APIs for displaying drawers, snack bars, and bottom sheets.
/// （このクラスは、引き出し、スナックバー、およびボトムシートを表示するためのAPIを提供します）
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
    /// Place the underlying Scaffold after return.
    /// （return の後に基盤となる Scaffold を置く）
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),

      // Various widgets can be added and displayed from the body.
      // （body から色々なウィジェットを追加表示できる）
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'The bottom line is the bottom line is the bottom line.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            Text(
              '要は1番下の基盤',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
