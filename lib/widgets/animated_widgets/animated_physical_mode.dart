import 'package:flutter/material.dart';
import '../../../../utils/helper_widgets.dart';

class MyAnimatedPhysicalModel extends StatefulWidget {
  const MyAnimatedPhysicalModel({Key? key}) : super(key: key);

  @override
  State<MyAnimatedPhysicalModel> createState() =>
      MyAnimatedPhysicalModelState();
}

class MyAnimatedPhysicalModelState extends State<MyAnimatedPhysicalModel> {
  double _elevation = 0.0;
  Color _color = Colors.lime;
  Color _shadowColor = Colors.black;
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedPhysicalModel(
          duration: const Duration(seconds: 1),
          shape: BoxShape.rectangle,
          elevation: _elevation,
          color: _color,
          shadowColor: _shadowColor,
          child: _buildContainer(),
        ),
        addVerticalSpace(30.0),
        buildButton(
          text: 'Slide up',
          onPressed: () {
            _change();
          },
        ),
      ],
    );
  }

  void _change() {
    setState(() {
      _elevation = isFirst ? 10.0 : 0.0;
      _color = isFirst ? Colors.black : Colors.lime;
      _shadowColor = isFirst ? Colors.red : Colors.transparent;
      isFirst = !isFirst;
    });
  }

  Widget _buildContainer() {
    return const SizedBox(
      width: 100.0,
      height: 100.0,
    );
  }
}
