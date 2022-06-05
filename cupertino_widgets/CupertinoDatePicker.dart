// Youtube URL: https://youtu.be/jhaWqHNO1nU
// This is the code presented in the URL above.  
// （上記URLで紹介されているコードです。）

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// How to make a date picker with Apple's design.
/// Appleのデザインの日付ピッカーを作る方法
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  DateTime date = DateTime(2016, 10, 26);
  DateTime time = DateTime(2016, 5, 10, 22, 35);
  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);

  /// Hosts the CupertinoDatePicker.
  /// CupertinoModalPopup with moderate fixing height.
  /// (the one that gnomes out from below.)
  /// CupertinoDatePickerをホスト
  /// 適度な固定の高さのCupertinoModalPopup（下からニョキッと出てくるやつ）
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // Popups are placed above the system navigation bar.
              // ポップアップをシステムナビゲーションバーの上に配置
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              // ポップアップの背景色を指定
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
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
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _DatePickerItem(
                children: <Widget>[
                  const Text('日付'),
                  CupertinoButton(
                    /// Display in date selection mode
                    /// 日付選択モードで表示
                    onPressed: () => _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: date,
                        mode: CupertinoDatePickerMode.date,
                        use24hFormat: true,
                        // This is called when the user changes the date.
                        // ユーザーが日付を変更したときに呼び出される
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() => date = newDate);
                        },
                      ),
                    ),
                    // In this example, the date value is formatted manually. You can use intl package to format the value based on user's locale settings.
                    // この例：日付の値は手動で書式設定されている（他のも）
                    // intlパッケージを使用 → ユーザーのロケール設定に基づいて値をフォーマットできる

                    child: Text(
                      '${date.month}-${date.day}-${date.year}',
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
              _DatePickerItem(
                children: <Widget>[
                  const Text('Time'),
                  CupertinoButton(
                    // Display in time picker mode.
                    // タイムピッカーモードで表示
                    onPressed: () => _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: time,
                        mode: CupertinoDatePickerMode.time,
                        use24hFormat: true,
                        // This is called when the user changes the time.
                        // ユーザーが時刻を変更したときに呼び出される
                        onDateTimeChanged: (DateTime newTime) {
                          setState(() => time = newTime);
                        },
                      ),
                    ),
                    child: Text(
                      '${time.hour}:${time.minute}',
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
              _DatePickerItem(
                children: <Widget>[
                  const Text('DateTime'),
                  CupertinoButton(
                    /// Display in dateTime picker mode.
                    /// dateTimeピッカーモードで表示
                    onPressed: () => _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: dateTime,
                        use24hFormat: true,
                        // This is called when the user changes the dateTime.
                        onDateTimeChanged: (DateTime newDateTime) {
                          setState(() => dateTime = newDateTime);
                        },
                      ),
                    ),
                    child: Text(
                      '${dateTime.month}-${dateTime.day}-${dateTime.year} ${dateTime.hour}:${dateTime.minute}',
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// このクラスは、単にウィジェットの列を装飾するものです。
class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
