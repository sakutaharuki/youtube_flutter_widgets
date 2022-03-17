// Youtube URL: https://youtu.be/Z2a4sxWc2C0
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

/// Container is a useful widget that combines common painting, positioning, and sizing widgets.
/// （Container は一般的なペイント、ポジショニング、サイズ設定ウィジェットを組み合わせた便利なウィジェット）
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),

      // Container Usage Examples.
      // （Container の使い方の例）
      // It's okay to put it after return.
      // （return の次に置いても平気）
      body: Container(
        constraints: BoxConstraints.expand(
          height:
              Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.orange.shade600,
        alignment: Alignment.center,
        child: Text('Container',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontSize: 70)),
        transform: Matrix4.rotationZ(0.1),
      ),
    );
  }
}
