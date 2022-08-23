import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => MyAnimatedContainerState();
}

class MyAnimatedContainerState extends State<MyAnimatedContainer> {
  Size size = const Size(200.0, 200.0);
  Color color = Colors.green;
  double radius = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: color,
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
            text: 'Show',
            onPressed: () {
              setState(() {
                change();
              });
            })
      ],
    );
  }

  void change() {
    color = Colors.red;
    size = const Size(400.0, 400.0);
    radius = 150.0;
  }
}
