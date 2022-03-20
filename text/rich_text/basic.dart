import 'package:flutter/material.dart';

/// How to combine bold and color in text.
/// （文字に太字や色を組み合わせる方法）
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
        title: const Text('RichText'),
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: "RichText lets you",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: 21,
            ),
            children: <TextSpan>[
              TextSpan(
                text: " bold",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: " and",
              ),
              TextSpan(
                text: " color",
                style: TextStyle(color: Colors.redAccent),
              ),
              TextSpan(
                text: " text!",
              ),
              TextSpan(
                text: "\nRichTextで文字に",
              ),
              TextSpan(
                  text: "太字", style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: "や",
              ),
              TextSpan(text: "色", style: TextStyle(color: Colors.redAccent)),
              TextSpan(
                text: "をつけることができます！",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
