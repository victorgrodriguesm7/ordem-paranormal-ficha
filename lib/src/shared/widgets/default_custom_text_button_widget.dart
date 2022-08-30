import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';

class CustomTextButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.darkWhite),
        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: 8, horizontal: 32))
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.black,
          fontSize: FontSizes.subtitle
        ),
      )
    );
  }
}