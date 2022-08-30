import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';

import '../../core/color.dart';

class DefaultText extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  const DefaultText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize = FontSizes.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.white,
        fontSize: fontSize,
      ),
    );
  }
}
