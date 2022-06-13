// Youtube URL: https://youtu.be/rOuOqmWPrYQ
// This is the code presented in the URL above.
// （上記URLで紹介されているコードです。）

import 'package:flutter/material.dart';

/// How to display the text of a prediction.
/// 予測の文字を表示する方法
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
        appBar: AppBar(title: const Text('Autocomplete')),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  /// アと検索したら出てくる項目
  static const List<String> _kOptions = <String>[
    'アイス',
    'アイス チョコレート',
    'アイス 誰か持ってきて（笑）',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('選んだのは $selection');
      },
    );
  }
}

