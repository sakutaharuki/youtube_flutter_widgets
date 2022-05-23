// Youtube URL: 
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to get the action sheet out from under.
/// 下からアクションシートを出す方法
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
        appBar: AppBar(title: const Text('CupertinoActionSheet')),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  /// ActionSheet Setting
  /// アクションシートの設定
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('どれにするかな？（タイトル）'),
        message: const Text('今日の気分はなにかな？（メッセージ）'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// アクションのデフォルトの動作
            /// アクションのテキストは太字でデフォルトの色
            isDefaultAction: true,
            onPressed: () {
              // タップ時の処理
              Navigator.pop(context);
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            /// 自由なアクションアクション
            /// Free Action Action
            onPressed: () {
              // タップ時の処理
              Navigator.pop(context);
            },
            child: const Text(
              'Action',
              style: TextStyle(color: Colors.black),
            ),
          ),
          CupertinoActionSheetAction(
            /// 削除のアクション
            /// アクションのテキストの色は赤
            isDestructiveAction: true,
            onPressed: () {
              // タップ時の処理
              Navigator.pop(context);
            },
            child: const Text('破壊！（削除）'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      /// ナビゲータのバーをつけることもできる
      navigationBar: const CupertinoNavigationBar(
        middle: Text('title'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () => _showActionSheet(context),
          child: const Text(
            'CupertinoActionSheet\nオープン！',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
      ),
    );
  }
}
