import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => MyAnimatedOpacityState();
}

class MyAnimatedOpacityState extends State<MyAnimatedOpacity> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 400.0,
          height: 400.0,
          child: AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: opacity,
            onEnd: () {
              // ignore: avoid_print
              print('End Ho gya');
            },
            child: Column(
              children: [
                Image.network(image),
                addVerticalSpace(10.0),
                const Text('Hello To the world'),
              ],
            ),
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
            text: 'Show',
            onPressed: () {
              setState(() {
                opacity = 1.0;
              });
            })
      ],
    );
  }
}
