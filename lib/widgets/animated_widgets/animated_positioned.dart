import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedPositioned extends StatefulWidget {
  const MyAnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPositioned> createState() => MyAnimatedPositionedState();
}

class MyAnimatedPositionedState extends State<MyAnimatedPositioned> {
  double _top = 0.0;
  double _left = 0.0;
  double _width = 300.0;
  double _height = 100.0;
  bool atTopLeft = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 400.0,
          child: Stack(
            children: [
              AnimatedPositioned(
                top: _top,
                left: _left,
                width: _width,
                height: _height,
                duration: const Duration(seconds: 1),
                child: _buildContainer(),
              ),
            ],
          ),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Change',
          onPressed: () {
            _change();
          },
        ),
      ],
    );
  }

  void _change() {
    setState(() {
      _left = atTopLeft ? 0.0 : 0.0;
      _top = atTopLeft ? 0.0 : 0.0;
      _width = atTopLeft ? 50.0 : 300.0;
      _height = atTopLeft ? 300.0 : 50.0;
      atTopLeft = !atTopLeft;
    });
  }

  Widget _buildContainer() {
    return Container(
      color: Colors.green,
    );
  }
}
