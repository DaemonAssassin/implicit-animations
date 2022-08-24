import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedRotation extends StatefulWidget {
  const MyAnimatedRotation({Key? key}) : super(key: key);

  @override
  State<MyAnimatedRotation> createState() => MyAnimatedRotationState();
}

class MyAnimatedRotationState extends State<MyAnimatedRotation> {
  double _turns = 0.0;

  void _changeRotation() {
    setState(() => _turns += 20);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedRotation(
          duration: const Duration(seconds: 2),
          turns: _turns,
          curve: Curves.easeInCirc,
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Show',
          onPressed: () {
            _changeRotation();
          },
        ),
      ],
    );
  }
}
