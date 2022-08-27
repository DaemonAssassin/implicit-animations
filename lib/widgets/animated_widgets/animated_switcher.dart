import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedSwitcher extends StatefulWidget {
  const MyAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  State<MyAnimatedSwitcher> createState() => MyAnimatedSwitcherState();
}

class MyAnimatedSwitcherState extends State<MyAnimatedSwitcher> {
  late Widget myWidget;
  int count = 0;
  bool isSmaller = true;

  @override
  void initState() {
    super.initState();
    myWidget = getContainer();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(seconds: 3),
          switchInCurve: Curves.slowMiddle,
          switchOutCurve: Curves.slowMiddle,
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: animation,
              child: child,
            );
          },
          child: myWidget,
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Show',
          onPressed: () {
            _switch();
          },
        ),
      ],
    );
  }

  void _switch() {
    setState(() {
      myWidget = isSmaller ? getAnotherContainer() : getContainer();
    });
    isSmaller = !isSmaller;
  }

  Widget getContainer() {
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.red,
      key: ValueKey<int>(count++),
    );
  }

  Widget getAnotherContainer() {
    return Container(
      width: 200.0,
      height: 200.0,
      key: ValueKey<int>(count++),
      color: Colors.green,
    );
  }
}
