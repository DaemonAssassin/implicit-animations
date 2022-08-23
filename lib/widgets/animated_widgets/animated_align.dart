import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<MyAnimatedAlign> createState() => MyAnimatedAlignState();
}

class MyAnimatedAlignState extends State<MyAnimatedAlign> {
  Alignment _alignment = Alignment.topLeft;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedAlign(
          alignment: _alignment,
          widthFactor: 10,
          heightFactor: 10,
          curve: Curves.bounceOut,
          duration: const Duration(seconds: 1),
          child: Container(
            color: Colors.purple,
            width: 50.0,
            height: 50.0,
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
            text: 'Show',
            onPressed: () {
              setState(() {
                _alignment = _alignment == Alignment.topLeft
                    ? Alignment.bottomRight
                    : Alignment.topLeft;
              });
            })
      ],
    );
  }
}
