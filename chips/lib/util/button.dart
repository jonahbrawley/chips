import 'package:flutter/material.dart';

class chipsButton extends ElevatedButton {
  final double? width;
  final double? height;

// constructor
  chipsButton({
    Key? key,
    required VoidCallback onPressed,
    required Widget child,
    this.width,
    this.height,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: child,
        );

  @override
  ButtonStyle styleFrom(BuildContext context) {
    final ButtonStyle style = super.styleFrom(context);

    if (width != null || height != null) {
      return style.copyWith(
        minimumSize: width != null && height != null
            ? Size(width!, height!)
            : width != null
                ? Size(width!, style.minimumSize!.height)
                : Size(style.minimumSize!.width, height!),
      );
    }
    return style;
  }
}
