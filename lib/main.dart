import 'package:flutter/material.dart';

import 'animations/animated_align/animated_align_page.dart';

void main() {
  runApp(const FlutterAnimation());
}

class FlutterAnimation extends StatelessWidget {
  const FlutterAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedAlignPage(),
    );
  }
}
