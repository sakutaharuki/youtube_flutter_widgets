// Youtube URL: https://youtu.be/ZILu-JEhMKA
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Thanks for watching'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          /// Set the position of the button itself here.
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Features of each（それぞれのボタンの特徴）

            // Just a button with letters on it.（文字があるただのボタン）
            // If you use icons, .icon is required.（アイコンを使う場合は .icon が必要）
            TextButton.icon(
              onPressed: () {},

              /// For buttons with icons, label and icon.
              /// （アイコンをつけるボタンの場合は labelとicon）
              label: const Text('11:10'),
              icon: const Icon(
                Icons.watch,
                size: 20.0,
              ),

              /// For buttons without icons, use child.
              /// （アイコンをつけないボタンの場合は child）
              // child: const Text('TextButton'),

              style: TextButton.styleFrom(
                /// Color（色）
                // Text color（文字の色）
                primary: Colors.orangeAccent,
                // Color when the button is disabled.（ボタンを押せないようにした時の色）
                onSurface: Colors.red,

                /// Size
                // Fixed value（固定値）
                // fixedSize: Size(100, 100),

                // Minimum（最小値）
                minimumSize: const Size(200, 100),

                /// Position
                // Widget position（ウィジェットの位置）
                alignment: Alignment.center,

                // Inside margin（余白）
                padding: const EdgeInsets.all(10),

                /// Shape（形状）

                // round shape（丸型）
                shape: const CircleBorder(),
              ),
            ),

            // You can add shadows.（影をつけることができるボタン）
            // If you use icons, .icon is required.（アイコンを使う場合は .icon が必要）
            ElevatedButton.icon(
              onPressed: () {},

              /// For buttons with icons, label and icon.
              /// （アイコンをつけるボタンの場合は labelとicon）
              label: const Text('animation'),
              icon: const Icon(
                Icons.animation,
                size: 20.0,
              ),

              /// For buttons without icons, use child.
              /// （アイコンをつけないボタンの場合は child）
              // child: const Text('ElevantedButton'),

              style: ElevatedButton.styleFrom(
                /// Color（色）
                // Button color（ボタンの色）
                primary: Colors.deepPurpleAccent,
                // Text color（文字の色）
                onPrimary: Colors.white,
                // Shadow color（影の色）
                shadowColor: Colors.blue,
                // Color when the button is disabled.（ボタンを押せないようにした時の色）
                onSurface: Colors.red,

                /// Size（サイズ）
                // Fixed value（固定値）
                // fixedSize: Size(100, 100),

                // Minimum（）
                minimumSize: const Size(200, 50),

                /// Position（位置）
                // Widget position（ウィジェットの位置）
                alignment: Alignment.center,

                // Inside margin（余白）
                padding: const EdgeInsets.all(10),

                /// Shadow（影）
                elevation: 10.0,

                /// Shape（形状）

                // round shape（丸型）
                // shape: const CircleBorder(),

                // Shaped like a soccer ball field（サッカーの球技場のような形）
                // shape: const StadiumBorder(),

                // Rounded rectangle（丸みを帯びた長方形）
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(50),
                // ),

                // diamond shape（ひし形）
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),

                // rounded corners（角丸）
                // shape: ContinuousRectangleBorder(
                //   borderRadius: BorderRadius.circular(50),
                // ),
              ),
            ),

            // You can turn on an outside line.（外線をつけることができるボタン）
            // If you use icons, .icon is required.（アイコンを使う場合は .icon が必要）
            OutlinedButton.icon(
              onPressed: () {},

              /// For buttons with icons, label and icon.
              /// （アイコンをつけるボタンの場合は labelとicon）
              label: const Text(''),
              icon: const Icon(
                Icons.play_arrow,
                size: 60.0,
              ),

              /// For buttons without icons, use child.
              /// （アイコンをつけないボタンの場合は child）
              // child: const Text('OutlineButton'),

              style: OutlinedButton.styleFrom(
                /// Color（色）
                // Text color（文字の色）
                primary: Colors.lightBlueAccent,
                // Color when the button is disabled.（ボタンを押せないようにした時の色）
                onSurface: Colors.red,

                /// Size（サイズ）
                // Fixed value（固定値）
                // fixedSize: Size(100, 100),

                // Minimum（最小値）
                minimumSize: const Size(200, 100),

                /// Position（位置）
                // Widget position（ウィジェットの位置）
                alignment: Alignment.center,

                // Inside margin（余白）
                padding: const EdgeInsets.all(10),

                /// Outside line（外線）
                side: const BorderSide(
                  color: Colors.lightBlueAccent,
                  width: 5.0,
                ),

                /// Shape（形状）

                // rounded corners（角丸）
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
