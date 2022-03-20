import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// How to add links and hashtags to text.
/// （文字にリンクやハッシュタグをつける方法）
/// pub get url_launcher first.
/// (先に url_launcher をpub get)
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
        title: const Text('RichText'),
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "I can post a Google link!",
            style: const TextStyle(
              color: Colors.orangeAccent,
              fontStyle: FontStyle.italic,
              fontSize: 21,
            ),
            children: <TextSpan>[
              const TextSpan(
                text: "\nTap ",
                style: TextStyle(color: Colors.white),
              ),

              /// Link example
              TextSpan(
                text: "Google",
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    _launchURL();
                  },
              ),
              const TextSpan(
                text: " will show you the Google Search website!",
                style: TextStyle(color: Colors.white),
              ),
              const TextSpan(
                text: "\nGoogleのリンクが貼れます！",
              ),

              /// リンクの例
              TextSpan(
                text: "\nGoogle",
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    _launchURL();
                  },
              ),
              const TextSpan(
                text: "をタップすると、Google検索のサイトが表示されます！",
                style: TextStyle(color: Colors.white),
              ),

              /// Hashtag Example
              /// （ハッシュタグの例）
              TextSpan(
                text: '\n# flutter # HarukiSakuta',
                style: const TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // なにか同じハッシュタグの投稿を検索し直す処理
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://www.google.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
