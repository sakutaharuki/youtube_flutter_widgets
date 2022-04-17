import 'package:flutter/material.dart';

/// How to change automatically over a period of time.
/// 一定期間で自動的に変化させる方法
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
        appBar: AppBar(title: const Text("AnimatedContainer")),
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
      child: Center(
        /// Animation Settings
        /// アニメーションの設定
        child: AnimatedContainer(
          width: selected ? 300.0 : 200.0,
          height: selected ? 200.0 : 600.0,
          color: selected ? Colors.red : Colors.orange,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(size: 150),
        ),
      ),
    );
  }
}
