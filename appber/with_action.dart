/// How to make advanced use of AppBar.（AppBar を高度に活用する方法）
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
        /// Action on the left（左側のアクション）
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.view_headline)),

        /// Title（タイトル）
        title: const Text('AppBar'),

        /// Action on the right（右側のアクション）
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text('Action 1'),
            style: TextButton.styleFrom(primary: Colors.black),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Show Snack bar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('やあ　Hi नमस्ते 你好 안녕')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
