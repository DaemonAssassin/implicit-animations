import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedScale extends StatefulWidget {
  const MyAnimatedScale({Key? key}) : super(key: key);

  @override
  State<MyAnimatedScale> createState() => MyAnimatedScaleState();
}

class MyAnimatedScaleState extends State<MyAnimatedScale> {
  double _scale = 1.0;

  changeScale() {
    setState(() {
      _scale = _scale == 1.0 ? 3.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedScale(
          scale: _scale,
          duration: const Duration(seconds: 1),
          curve: Curves.bounceOut,
          alignment: Alignment.center,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.pink,
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Show',
          onPressed: () {
            changeScale();
          },
        ),
      ],
    );
  }
}
