// Youtube URL: https://youtu.be/2BFEP79cO6I
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to split a page in Apple's design.
/// Appleのデザインでページの分割をする方法
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
        appBar: AppBar(title: const Text('CupertinoSegmentedControl')),
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
    /// Page detail settings.
    /// ページの細かい設定
    return CupertinoPageScaffold(
      backgroundColor: skyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(
        // このCupertinoセグメントコントロールは、タイプとしてenum "Sky "を持ちます
        middle: CupertinoSegmentedControl<Sky>(
          selectedColor: skyColors[_selectedSegment],
          // 子供の周りに横長のパッドを用意する
          padding: const EdgeInsets.symmetric(horizontal: 12),
          // 現在選択されているセグメント制御を表します
          groupValue: _selectedSegment,
          // 選択されたセグメント化されたコントロールを設定するコールバック
          onValueChanged: (Sky value) {
            setState(() {
              _selectedSegment = value;
            });
          },

          /// 各セグメントの設定
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
