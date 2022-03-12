// Youtube URL: https://youtu.be/Ppz1TG7Ck8M
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            /// Colored Buttons（色付きボタン）
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
              ),
            ),

            /// side round button（横丸ボタン）
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.black,
                shape: const StadiumBorder(),
              ),
            ),

            /// rounded button（角丸ボタン）
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            /// Horizontal Circle + Outer Line（横丸 + 外線）
            OutlinedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                shape: const StadiumBorder(),
                side: const BorderSide(color: Colors.green),
              ),
            ),

            /// Text only + outside line（文字のみ + 外線）
            OutlinedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.white),
              ),
            ),

            /// round button（丸型ボタン）
            ElevatedButton(
              onPressed: () {},
              child: const Text('B'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                shape: const CircleBorder(
                  side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),

            /// gradation button（グラデーションボタン）
            ElevatedButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.blue.shade500,
                      Colors.blue.shade700,
                      Colors.deepPurple,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text('Gradient Button（ボタン）'),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(0),
              ),
            ),

            /// Deep shadow button（影が深いボタン）
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.black,
                elevation: 16,
              ),
            ),

            /// Button that changes color only for ripple effect
            /// （rippleエフェクトのみ色が変わるボタン）
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button（ボタン）'),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.purple,
              ),
            ),

            /// Button with icon(アイコン入りボタン)
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.tag_faces,
                color: Colors.white,
              ),
              label: const Text('Button（ボタン）'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                onPrimary: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
