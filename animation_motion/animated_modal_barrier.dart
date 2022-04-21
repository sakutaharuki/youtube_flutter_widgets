

import 'package:flutter/material.dart';

/// 後のウィジェットをタップ不可にする方法
// +α：ポップアップの表示、dismissible の有無の切り替え
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const routeName = 'AnimatedModalBarrier';

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  var _dismissible = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AnimatedModalBarrier',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push<void>(MyPageRoute(
                  page: _ModalPage(),
                  dismissible: _dismissible,
                ));
              },
              child: const Text('Open Modal View'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('dismissible'),
                Switch(
                  onChanged: (value) {
                    setState(() {
                      _dismissible = value;
                    });
                  },
                  value: _dismissible,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ようわからんw
class MyPageRoute extends TransitionRoute<void> {
  MyPageRoute({
    required this.page,
    required this.dismissible,
  });

  final Widget page;
  final bool dismissible;

  @override
  Iterable<OverlayEntry> createOverlayEntries() {
    return [
      OverlayEntry(builder: _buildModalBarrier),
      OverlayEntry(builder: (context) => Center(child: page))
    ];
  }

  @override
  bool get opaque => false;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  Widget _buildModalBarrier(BuildContext context) {
    final animation = this.animation!;
    return IgnorePointer(
      // changedInternalState is called when this updates
      ignoring: animation.status == AnimationStatus.reverse ||
          // dismissed is possible when doing a manual pop gesture
          animation.status == AnimationStatus.dismissed,
      child: AnimatedModalBarrier(
        color: animation.drive(
          ColorTween(
            begin: Colors.transparent,
            end: Colors.black.withAlpha(80),
          ),
        ),
        dismissible: dismissible,
      ),
    );
  }
}

/// ポップアップを作成するクラス
class _ModalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('(　´･‿･｀)'),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            )
          ],
        ),
      ),
    );
  }
}

/// AppScaffoldを管理するクラス
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key? key,
    required this.title,
    required this.child,
    this.floatingActionButton,
  }) : super(key: key);

  final String title;
  final Widget child;
  final FloatingActionButton? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: child,
      floatingActionButton: floatingActionButton,
    );
  }
}
