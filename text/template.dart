// Youtube URL: https://youtu.be/eQBX_ou-Tek
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

import 'dart:ui' as ui;

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
      home: const MyHomePage(title: 'Thanks for watching'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            /// Bold text（太字）
            const Text(
              'Bold when in doubt（迷ったら太字）',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            /// Italics（イタリック体）
            const Text(
              "If you want to get to the bottom of coolness, this is the way to go.（かっこよさを突き詰めるならこれ）",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),

            /// Size（大きい？サイズ）
            Text(
              "Youtube",
              style:
                  DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.8),
            ),

            /// Wavy red underline with white text（赤の波線と白の下線）
            RichText(
              text: const TextSpan(
                text: "Change（チェンジ）",
                children: <TextSpan>[
                  TextSpan(
                    text: 'Red（赤）',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.wavy,
                    ),
                  ),
                  TextSpan(
                    text: 'The World of Silver（白銀の世界）',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            /// Borders and stroke (Foreground)（ボーダーとストローク（前景））
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Hello（こんにちは）',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue.shade700,
                  ),
                ),
                // Solid text as fill.
                const Text(
                  'Hello（こんにちは）',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            /// Gradients (Foreground)（グラデーション（前景））
            Text(
              'Thank you!',
              style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..shader = ui.Gradient.linear(
                      const Offset(0, 25),
                      const Offset(150, 20),
                      <Color>[
                        Colors.yellow,
                        Colors.orange,
                      ],
                    )),
            ),
          ],
        ),
      ),
    );
  }
}
