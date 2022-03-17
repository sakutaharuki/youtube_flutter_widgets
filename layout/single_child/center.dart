// Youtube URL: https://youtu.be/AmTumbvVPCk
// This is the code presented in the URL above.
// The reading order is easier if you follow the numbers in the file.

/// How to display widgets in the middle.
/// （ウィジェットを真ん中に表示する方法）
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
        title: const Text('Center'),
      ),

      // Center allows widgets to be displayed in the middle.
      // （Center でウィジェットを真ん中に表示できる）
      // It's okay to put it after return.
      // （return の次に置いても平気）
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Display in the middle.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
              ),
            ),
            Text(
              '真ん中に表示',
              style: TextStyle(
                color: Colors.white,
                fontSize: 65,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
