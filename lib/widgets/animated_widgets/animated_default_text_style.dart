import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedDefaultTextStyle extends StatefulWidget {
  const MyAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  State<MyAnimatedDefaultTextStyle> createState() =>
      MyAnimatedDefaultTextStyleState();
}

class MyAnimatedDefaultTextStyleState
    extends State<MyAnimatedDefaultTextStyle> {
  late TextStyle _textStyle;
  bool isThin = true;

  @override
  void initState() {
    super.initState();
    _textStyle = _buildTS1();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 1),
          style: _textStyle,
          curve: Curves.easeInCubic,
          child: const Text('I am Developer'),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Show',
          onPressed: () {
            _switch();
          },
        ),
      ],
    );
  }

  void _switch() {
    setState(() {
      _textStyle = isThin ? _buildTS2() : _buildTS1();
      isThin = !isThin;
    });
  }

  TextStyle _buildTS1() {
    return const TextStyle(
      color: Colors.red,
      fontSize: 48.0,
    );
  }

  TextStyle _buildTS2() {
    return const TextStyle(
      color: Colors.green,
      fontSize: 48.0,
      fontWeight: FontWeight.bold,
    );
  }
}
