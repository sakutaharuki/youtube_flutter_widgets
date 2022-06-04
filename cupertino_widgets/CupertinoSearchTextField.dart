// Youtube URL: 
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to use Searchbar in Apple's design.
/// Appleのデザインの検索バーを使う方法
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
        appBar: AppBar(title: const Text('CupertinoSearchTextField')),
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
  // テキストフィールドに表示されるテキストを制御するには、コントローラを使用
  // 例：テキストフィールドの初期値を設定→ テキストがすでに含まれているコントローラを使用する
  /*
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(controller: _textController);
  }
}
*/
  // フィールドの値が変更されたとき、またはキーボードによって送信されたときに通知を受けるために、
  // ValueChanged<String>をonChangedパラメーターと
  // onSubmittedパラメーターの両方に渡すことをお勧めします。
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: (String value) {
        print('The text has changed to: $value');
      },
      onSubmitted: (String value) {
        print('Submitted text: $value');
      },
    );
  }
}
