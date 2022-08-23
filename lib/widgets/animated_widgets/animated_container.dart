import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:implicit_animations_flutter/utils/constants.dart';
import 'package:implicit_animations_flutter/utils/helper_widgets.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => MyAnimatedOpacityState();
}

class MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 400.0,
          height: 400.0,
          child: Image.network(image),
        ),
        addVerticalSpace(30.0),
        buildButton(text: 'Show', onPressed: () {})
      ],
    );
  }
}
