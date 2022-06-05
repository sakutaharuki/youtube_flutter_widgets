// Youtube URL: https://youtu.be/W8p-9QWxBg8
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to use a large title navigation bar with slivers in Apple's design.
/// Appleのデザインのスライバーを使用した大きなタイトルのナビゲーションバー使う方法
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
        // appBar: AppBar(title: const Text('CupertinoSlidingSegmentedControl')),
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
    return CupertinoPageScaffold(
      // スライバを使用してカスタムスクロール効果を作成するScrollView
      child: CustomScrollView(
        // スライバーウィジェットの一覧
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            leading: Icon(CupertinoIcons.person_2),
            // このタイトルは、折りたたまれた状態でも展開された状態でも表示される

            // "middle"パラメータが省略された場合、
            // "largeTitle "パラメータで指定されたウィジェットが
            // 折りたたまれた状態で代わりに使用される
            largeTitle: Text('Contacts'),
            trailing: Icon(CupertinoIcons.add_circled),
          ),
          // ビューポートの残りのスペースを埋めるウィジェット
          // スクロール可能な領域をドラッグして、CupertinoSliverNavigationBarを折りたたむ
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text('Drag me up', textAlign: TextAlign.center),
                CupertinoButton.filled(
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute<Widget>(
                        builder: (BuildContext context) {
                      return const NextPage();
                    }));
                  },
                  child: const Text('Go to Next Page'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemYellow,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                    ? CupertinoColors.black
                    : CupertinoColors.white,
              ),
            ),
            // 中央のウィジェットは、折りたたんだ状態でも展開した状態でも表示される
            middle: const Text('Contacts Group'),
            // middle "パラメータを実装した場合、
            // CupertinoSliverNavigationBarが完全に展開されたときのみ、
            // 大きなタイトルが表示される
            largeTitle: const Text('Family'),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('Drag me up', textAlign: TextAlign.center),
                // 前ページがあるルートで "leading "パラメータが省略された場合、
                // 先頭の位置に戻るボタンが自動的に追加される
                Text('Tap on the leading button to navigate back',
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
