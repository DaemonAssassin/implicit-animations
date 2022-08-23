import 'package:flutter/material.dart';
import 'package:implicit_animations_flutter/utils/constants.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<MyAnimatedCrossFade> createState() => MyAnimatedCrossFadeState();
}

class MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.pink,
          child: AnimatedCrossFade(
            firstChild: SizedBox(
              width: 300.0,
              height: 300,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            secondChild: SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            duration: const Duration(seconds: 2),
            alignment: Alignment.centerLeft,
            firstCurve: Curves.elasticOut,
            secondCurve: Curves.elasticIn,
            sizeCurve: Curves.slowMiddle,
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
            text: 'Show',
            onPressed: () {
              setState(() {
                _showFirst = !_showFirst;
              });
            })
      ],
    );
  }
}
