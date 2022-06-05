// Youtube URL: https://youtu.be/I7E-u2PTy0o
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to use scrollbars in Apple's design.
/// Appleのデザインのスクロールバーを使う方法
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
        appBar: AppBar(title: const Text('CupertinoScrollbar')),
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
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            SizedBox(
                width: constraints.maxWidth / 2,
                // Scrollbarsを利用する場合、
                /// PrimaryScrollControllerにアタッチできるスクロール位置は1つだけ。
                // このスクロールビューに独自のスクロールコントローラーを提供することで、
                /// PrimaryScrollControllerにアタッチされるのを防ぎます。
                child: Scrollbar(
                  thumbVisibility: true,
                  controller: _firstController,
                  child: ListView.builder(
                      controller: _firstController,
                      itemCount: 100,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Scrollable 1 : Index $index'),
                        );
                      }),
                )),
            SizedBox(
              width: constraints.maxWidth / 2,
              // この縦スクロールビューは
              // ScrollControllerが提供されていないため、
              /// PrimaryScrollControllerを使用しています。
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      color:
                          index.isEven ? Colors.amberAccent : Colors.blueAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Scrollable 2 : Index $index'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
