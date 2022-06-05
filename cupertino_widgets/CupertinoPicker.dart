// Youtube URL: https://youtu.be/tgDzEiJ_vuk
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to prepare a picker of Apple's design.
/// Appleのデザインのピッカーを用意する方法
void main() {
  runApp(const MyApp());
}

const double _kItemExtent = 32.0;
const List<String> _fruitNames = <String>[
  'りんご',
  'ごりら',
  'らっぷ',
  'ぷりんあらもーど',
  'どんぐりころころ',
  'どんぶらこ',
];

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
        appBar: AppBar(title: const Text('CupertinoPicker')),
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
  int _selectedFruit = 0;

  // CupertinoPickerをホスト
  // 適度な高さの固定されたCupertinoModalPopup
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // Bottom margin：ポップアップをシステムナビゲーションバーの上に配置するために用意されている
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // ポップアップの背景色
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // SafeAreaウィジェットを使用して、システムのオーバーラップを回避する
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '選んだのは、これだ！',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,

              /// CupertinoPickerを表示させる
              onPressed: () => _showDialog(
                CupertinoPicker(
                  magnification: 1.22,
                  squeeze: 1.2,
                  useMagnifier: true,
                  itemExtent: _kItemExtent,
                  onSelectedItemChanged: (int selectedItem) {
                    setState(() {
                      // 選択された項目が変更されたときに呼び出される
                      _selectedFruit = selectedItem;
                    });
                  },
                  children:
                      List<Widget>.generate(_fruitNames.length, (int index) {
                    return Center(
                      child: Text(
                        _fruitNames[index],
                      ),
                    );
                  }),
                ),
              ),
              // This displays the selected fruit name.
              child: Text(
                _fruitNames[_selectedFruit],
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
