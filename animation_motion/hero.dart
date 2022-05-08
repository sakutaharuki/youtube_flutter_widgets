// Youtube URL: https://youtu.be/Tzo7YTCxKn0
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/material.dart';

/// How to enlarge only the icons for easier viewing.
/// アイコンだけ見やすく拡大する方法
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
        appBar: AppBar(title: const Text('Hero')),
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
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 20.0,
        ),
        ListTile(
          leading: Hero(
            /// This tag is important.
            /// このタグが重要
            tag: 'hero-rectangle',
            child: _blueRectangle(const Size(50, 50)),
          ),
          onTap: () => _gotoDetailsPage(context),
          title: const Text('アイコンをタップで\nヒーローアニメーション'),
        ),
      ],
    );
  }

  /// Widget to enlarge for easy viewing.
  /// 見やすく拡大するウィジェット
  Widget _blueRectangle(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: Colors.blue,
    );
  }

  /// Icons are displayed in large size.
  /// アイコンが大きく表示される
  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: _blueRectangle(const Size(200, 200)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
