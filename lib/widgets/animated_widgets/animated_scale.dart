import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedScale extends StatefulWidget {
  const MyAnimatedScale({Key? key}) : super(key: key);

  @override
  State<MyAnimatedScale> createState() => MyAnimatedScaleState();
}

class MyAnimatedScaleState extends State<MyAnimatedScale> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // AnimatedScale(),
        addVerticalSpace(30.0),
        buildButton(
            text: 'Show',
            onPressed: () {
              setState(() {});
            })
      ],
    );
  }
}
