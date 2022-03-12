// Youtube URL: https://youtu.be/18QJ3JpJCcU
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Features of each

            // Just a button with letters on it.
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
              style: TextButton.styleFrom(
                /// Text color
                primary: Colors.orangeAccent,

                /// Color when the button is disabled.
                onSurface: Colors.red,
              ),
            ),

            // You can add shadows.
            ElevatedButton(
              onPressed: () {},
              child: Text('ElevantedButton'),
              style: ElevatedButton.styleFrom(
                /// Button color
                primary: Colors.deepPurpleAccent,

                /// Text color
                onPrimary: Colors.white,

                /// Shadow color
                shadowColor: Colors.white,

                /// Color when the button is disabled.
                onSurface: Colors.red,
              ),
            ),

            // You can turn on an outside line.
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlineButton'),
              style: OutlinedButton.styleFrom(
                /// Text color
                primary: Colors.lightBlueAccent,

                /// Color when the button is disabled.
                onSurface: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
