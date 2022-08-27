import 'package:flutter/material.dart';
import 'package:implicit_animations_flutter/widgets/animated_widgets/animated_switcher.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyAnimatedSwitcher(),
        ),
      ),
    );
  }
}
