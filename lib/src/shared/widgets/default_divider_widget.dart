import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';

class DefaultDividerWidget extends StatelessWidget {
  const DefaultDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: AppColors.red[300],
    );
  }

  static double get height => 2;
}