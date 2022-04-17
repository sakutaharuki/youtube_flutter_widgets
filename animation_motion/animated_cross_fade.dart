import 'package:flutter/material.dart';

/// How to switch which widget to display.
/// 表示するウィジェットを切り替える方法
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
        appBar: AppBar(title: const Text("AnimatedCrossFade")),
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
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();

    /// Duration Setting
    /// 継続時間の設定
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _crossFadeState = CrossFadeState.showSecond;
      });
    });

    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _crossFadeState = CrossFadeState.showFirst;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      /// Animation Settings
      /// アニメーションの設定
      child: AnimatedCrossFade(
        crossFadeState: _crossFadeState,
        duration: const Duration(seconds: 2),
        reverseDuration: const Duration(seconds: 3),
        firstCurve: Curves.bounceInOut,
        secondCurve: Curves.easeInBack,
        firstChild: const Icon(Icons.insert_emoticon, size: 400),
        secondChild: const Icon(Icons.audiotrack_rounded, size: 200),
        layoutBuilder: (Widget topChild, Key topChildKey, Widget bottomChild,
            Key bottomChildKey) {
          return Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                key: bottomChildKey,
                left: 100.0,
                top: 100.0,
                child: bottomChild,
              ),
              Positioned(
                key: topChildKey,
                child: topChild,
              ),
            ],
          );
        },
      ),
    );
  }
}
/*
Key key：ウィジェットキー。置き換える必要があるかどうかを制御するために使用されます。
Widget firstChild*：が表示されるときに表示されるcrossFadeState子CrossFadeState.showFirst。
Widget secondChild*：が表示されるときに表示されるcrossFadeState子CrossFadeState.showSecond。
Curve firstCurve：最初の子のフェードカーブ。デフォルトはCurves.linear。
Curve secondCurve2番目の子のフェードカーブ。デフォルトはCurves.linear。デフォルトはCurves.linear。
Curse sizeCurve：2人の子供のサイズの間のアニメーションの曲線。
AligntmentGeometry alignment：アニメーションの実行中の子の配置。
CrossFadeState crossFadeState*：最初の子を表示するか2番目の子を表示するかを決定する状態。
Duration duration*：アニメーションの長さ。
Duration reverseDuration：逆方向に実行しているときのアニメーションの長さ。
AnimatedCrossFadeBuilder layoutBuilder：最初の子と2番目の子を配置するためのビルダー。

FadeTransition：子ウィジェットの不透明度をアニメーション化するウィジェット。
AnimatedAlign：ウィジェットの配置が変更されたときにアニメーションを作成するためのウィジェット。
AnimatedPadding：ウィジェットのパディングが変更されたときにアニメーションを作成するためのウィジェット。
AnimatedOpacity：ウィジェットの不透明度が変化したときにアニメーションを作成するためのウィジェット。
AnimatedSwitcher：2つのウィジェットを切り替えるときにアニメーションを作成するためのウィジェット。
AnimatedSize：子のサイズに一致するようにサイズをアニメーション化するウィジェット。
AnimatedContainer：プロパティの値が変更されたときにアニメーションを開始するウィジェット。
 */
