import 'package:flutter/material.dart';

class ChipsButton extends Container {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final Widget child;

// constructor
  ChipsButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.child,
  }) : super(
            // inherit properties from Container()
            key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            fixedSize: Size(
              width,
              height,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  MediaQuery.of(context).size.height * 0.1),
            )),
        // child is Text()
        child: child,
      ),
    );
  }
}
