// Youtube URL:  
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
        title: const Text('ExcludeSemantics'),
      ),

      /// will prevent readers to focus on the text.
      /// This may be useful if some widget should not be considered
      /// in some situations, so we’ll set “excluding” on true,
      /// by setting on false the widget will work as before.
      /// （読者がテキストに集中するのを防ぎます。
      /// 　特定の状況で一部のウィジェットを考慮すべきでない場合に役立つ可能性があるため
      /// 　trueに「excluding」を設定します
      /// 　falseに設定すると、ウィジェットは以前と同じように機能します）
      body: ExcludeSemantics(
        excluding: true,
        child: Semantics(
          button: true,
          enabled: true,
          label: 'Clickable text here!',
          child: Center(
            child: GestureDetector(
                onTap: () {
                  print('Clicked!');
                },
                child: Text('Click Me!', style: TextStyle(fontSize: 56))),
          ),
        ),
      ),
    );
  }
}
