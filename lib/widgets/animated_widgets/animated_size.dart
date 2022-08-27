import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedSize extends StatefulWidget {
  const MyAnimatedSize({Key? key}) : super(key: key);

  @override
  State<MyAnimatedSize> createState() => MyAnimatedSizeState();
}

class MyAnimatedSizeState extends State<MyAnimatedSize> {
  double _size = 250.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSize(
          duration: const Duration(seconds: 1),
          reverseDuration: const Duration(seconds: 2),
          child: Container(
            color: Colors.red,
            width: _size,
            height: _size,
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Show',
          onPressed: () {
            _changeSize();
          },
        ),
      ],
    );
  }

  void _changeSize() {
    setState(() {
      _size = _size == 250 ? 150 : 250;
    });
  }
}
