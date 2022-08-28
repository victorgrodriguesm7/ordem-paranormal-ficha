import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_divider_widget.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({
    Key? key,
    required String title,
    List<Widget>? actions,
    Widget? leading
  }): super(
    key: key,
    child: Column(
      children: [
        AppBar(
          title: Text(title, style: TextStyle(
            fontSize: FontSizes.subtitle
          )),
          backgroundColor: AppColors.black,
          elevation: 0,
          centerTitle: true,
          actions: actions,
          leading: leading,
        ),
        const DefaultDividerWidget()
      ],
    ),
    preferredSize: Size.fromHeight(
      defaultHeight + DefaultDividerWidget.height
    )
  );

  static double get defaultHeight => 56;
}