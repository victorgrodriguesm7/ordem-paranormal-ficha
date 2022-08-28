import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';

class DefaultTextInput extends StatelessWidget {
  final String label;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const DefaultTextInput({
    Key? key,
    required this.label,
    required this.onChanged,
    this.validator,
    this.keyboardType,
    this.initialValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
          style: TextStyle(
            color: AppColors.white,
            fontSize: FontSizes.subtitle
          )
        ),
        TextFormField(
          style: TextStyle(
            fontSize: FontSizes.subtitle,
            color: AppColors.black
          ),
          cursorColor: AppColors.gray,
          initialValue: initialValue,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
            filled: true,
            fillColor: AppColors.darkWhite,
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.transparent)
            ),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.transparent)
            ),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.transparent)
            ),
          ),
          onChanged: onChanged,
          validator: validator,
        ),
      ],
    );
  }
}