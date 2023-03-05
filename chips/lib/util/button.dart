import 'package:flutter/material.dart';

class ChipsButton extends Container {
  final double width;
  final double height;

// constructor
  ChipsButton({
    Key? key,
    required Widget child,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {},
          // child: Text() ...
          child: child,
          style: ElevatedButton.styleFrom(
            fixedSize: Size(
              width,
              height,
            ),
          )),
    );
  }
}
