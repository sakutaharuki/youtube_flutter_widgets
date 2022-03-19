import 'package:flutter/material.dart';

/// How to display images from the Internet.
/// （ネットの画像を表示する方法）import 'package:flutter/material.dart';
// If you simply want to display an image as a widget on the screen, use Image.network.
// （単に画像をウィジェットとして画面に表示したい場合は Image.network を使用します）
// Use NetworkImage if you need an ImageProvider.
// (ImageProvider が必要な場合は NetworkImage を使用します）
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
        title: const Text('Net Image'),
      ),
      body: const Center(
        // Simply display the image as a widget on the screen.
        // （画面上にウィジェットとしてただ単に画像を表示する）
        child: Image(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2016/12/17/18/50/cherry-1914118_1280.jpg'),
        ),
      ),
    );
  }
}
