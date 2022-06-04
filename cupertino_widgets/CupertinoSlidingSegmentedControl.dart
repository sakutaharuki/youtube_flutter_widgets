// Youtube URL: 
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to use Apple's design visual and easy-to-use sliders.
/// Appleのデザインの視覚的で使いやすいスライダーを使う方法
// Difference from the previous SegmentedControl:
// This one is newer and has a sliding animation.
// この前の SegmentedControl との違い：こっちの方が新しくて、スライドアニメーションがある
void main() {
  runApp(const MyApp());
}

enum Sky { red, blue, yellow }

Map<Sky, Color> skyColors = <Sky, Color>{
  Sky.red: const Color(0xffdc143c),
  Sky.blue: const Color(0xff191970),
  Sky.yellow: const Color(0xffffd700),
};

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
  Sky _selectedSegment = Sky.red;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: skyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(
        // このCupertinoセグメントコントロールは、タイプとしてenum "Sky "を持つ
        middle: CupertinoSlidingSegmentedControl<Sky>(
          backgroundColor: CupertinoColors.systemGrey2,
          thumbColor: skyColors[_selectedSegment]!,
          // 現在選択されているセグメント制御を表す
          groupValue: _selectedSegment,
          // 選択されたセグメント化されたコントロールを設定するコールバック
          onValueChanged: (Sky? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
              });
            }
          },
          children: const <Sky, Widget>{
            Sky.red: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'red',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            Sky.blue: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'blue',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
            Sky.yellow: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'yellow',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
          },
        ),
      ),
      child: Center(
        child: Text(
          '選んだセグメント\n${_selectedSegment.name}',
          textAlign: TextAlign.center,
          style: const TextStyle(color: CupertinoColors.white, fontSize: 40),
        ),
      ),
    );
  }
}
