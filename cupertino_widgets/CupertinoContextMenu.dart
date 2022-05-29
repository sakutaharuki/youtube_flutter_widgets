// Youtube URL: 
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to show the menu that appears when you press and hold an icon on the iPhone.
/// iPhoneでアイコンを長押しした時に出るメニューを表示する方法
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
        appBar: AppBar(title: const Text('CupertinoContextMenu')),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,

          /// Context menu settings
          /// コンテキストメニューの設定
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text('Action1'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text('Action2'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            child: Container(
              color: Colors.orange,
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
