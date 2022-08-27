import 'package:flutter/material.dart';
import '../../utils/helper_widgets.dart';

class MyAnimatedSlide extends StatefulWidget {
  const MyAnimatedSlide({Key? key}) : super(key: key);

  @override
  State<MyAnimatedSlide> createState() => MyAnimatedSlideState();
}

class MyAnimatedSlideState extends State<MyAnimatedSlide> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSlide(
          offset: _offset,
          duration: const Duration(seconds: 1),
          curve: Curves.bounceOut,
          child: _buildContainer(),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Slide up',
          onPressed: () {
            _slideUp();
          },
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Slide down',
          onPressed: () {
            _slideDown();
          },
        ),
      ],
    );
  }

  void _slideUp() {
    setState(() {
      _offset -= const Offset(0, 1);
    });
  }

  void _slideDown() {
    setState(() {
      _offset += const Offset(0, 1);
    });
  }

  Widget _buildContainer() {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.red,
    );
  }
}
