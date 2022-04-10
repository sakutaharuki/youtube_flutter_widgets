// Youtube URL: https://youtu.be/CoseTjyBehg
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）


import 'package:flutter/material.dart';

/// A widget that drops all the semantics of its descendants.
/// （childのすべてのセマンティクスを削除するウィジェット）
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
        title: const Text('MergeSemantics'),
      ),

      /// Used to merge the checked semantic state of Text's labels and
      /// checkboxes into a single function.
      /// Otherwise, labels will appear as a separate feature from checkboxes.
      /// （Text のラベルとチェックボックスの checked セマンティック状態を、
      /// 1 つの機能に統合するために使用する。
      /// そうしないと、ラベルはチェックボックスとは別の機能として表示される）
      body: MergeSemantics(
        child: Row(
          children: <Widget>[
            Checkbox(
              value: true,
              onChanged: (bool? value) {},
            ),
            const Text('Settings'),
          ],
        ),
      ),
    );
  }
}
