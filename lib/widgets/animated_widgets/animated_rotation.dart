import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedRotation extends StatefulWidget {
  const MyAnimatedRotation({Key? key}) : super(key: key);

  @override
  State<MyAnimatedRotation> createState() => MyAnimatedRotationState();
}

class MyAnimatedRotationState extends State<MyAnimatedRotation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // AnimatedScale(

        // ),
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
