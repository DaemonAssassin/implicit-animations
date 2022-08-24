import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedPadding extends StatefulWidget {
  const MyAnimatedPadding({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPadding> createState() => MyAnimatedPaddingState();
}

class MyAnimatedPaddingState extends State<MyAnimatedPadding> {
  EdgeInsets _padding = EdgeInsets.zero;

  void _changePadding() {
    setState(() {
      _padding = _padding == EdgeInsets.zero
          ? const EdgeInsets.all(20)
          : EdgeInsets.zero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.black,
          child: AnimatedPadding(
            padding: _padding,
            duration: const Duration(seconds: 1),
            child: Container(
              color: Colors.red,
              width: 100.0,
              height: 100.0,
            ),
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Show',
          onPressed: () {
            _changePadding();
          },
        ),
      ],
    );
  }
}
