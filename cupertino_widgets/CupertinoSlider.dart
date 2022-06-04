// Youtube URL: 
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to use Apple's design visual and easy-to-use sliders.
/// Appleのデザインの視覚的で使いやすいスライダーを使う方法
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
        appBar: AppBar(title: const Text('CupertinoSlider')),
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
  double _currentSliderValue = 0.0;
  String? _sliderStatus;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // スライダーの現在の値を表示
            Text('$_currentSliderValue'),
            CupertinoSlider(
              key: const Key('slider'),
              value: _currentSliderValue,
              // これにより、スライダーは部門間をジャンプできる
              // NULLの場合、スライドの移動は連続的に行われる
              divisions: 5,
              // スライダーの最大値
              max: 100,
              activeColor: CupertinoColors.systemPurple,
              thumbColor: CupertinoColors.systemPurple,
              // スライディングが開始されたときに呼び出される
              onChangeStart: (double value) {
                setState(() {
                  _sliderStatus = 'スライド中〜';
                });
              },
              // スライディングが終了したときに呼び出される
              onChangeEnd: (double value) {
                setState(() {
                  _sliderStatus = 'スライドが終わったぜ';
                });
              },
              // スライダーの値が変更されたときに呼び出される
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Text(
              _sliderStatus ?? '',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
