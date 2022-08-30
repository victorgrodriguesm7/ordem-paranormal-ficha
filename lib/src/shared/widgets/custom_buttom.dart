import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final double? elevation;
  final Color? background;
  final Function() onPressed;
  final double? radius;
  final Widget child;
  final AlignmentGeometry? alignment;
  final EdgeInsets? padding;
  const CustomButtom(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.elevation,
      this.background,
      this.radius,
      this.alignment,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(elevation),
        backgroundColor:
            MaterialStateProperty.all<Color?>(background ?? Colors.transparent),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 0)),
        ),
        alignment: alignment,
        padding: padding != null
            ? MaterialStateProperty.all<EdgeInsets>(padding!)
            : null,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size.zero),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
