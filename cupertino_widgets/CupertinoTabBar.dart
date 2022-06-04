// Youtube URL: 
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to use Apple's design tab bar.
/// Appleのデザインのタブバーを使う方法
// (bottom navigation tab bar)
// （下部ナビゲーションタブバー）
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
        appBar: AppBar(title: const Text('CupertinoTabBar')),
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
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      /// Tab bar settings
      /// タブバーの設定
      tabBar: CupertinoTabBar(
        activeColor: Colors.redAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: 'タブ1',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_fill),
            label: 'タブ2',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Text('現在のタブは$indexです！'),
            );
          },
        );
      },
    );
  }
}
