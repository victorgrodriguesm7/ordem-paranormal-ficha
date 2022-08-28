import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';

class DefaultHorizontalTextInput extends StatelessWidget {
  final String label;
  final String? initialValue;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  const DefaultHorizontalTextInput({
    Key? key,
    required this.label,
    required this.onChanged,
    this.validator,
    this.keyboardType,
    this.initialValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,
          style: TextStyle(
            color: AppColors.white,
            fontSize: FontSizes.subtitle
          )
        ),
        SizedBox(
          width: FontSizes.subtitle * 4,
          child: TextFormField(
            initialValue: initialValue,
            style: TextStyle(
              fontSize: FontSizes.subtitle,
              color: AppColors.black
            ),
            keyboardType: keyboardType,
            cursorColor: AppColors.gray,
            textAlign: TextAlign.center,
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
        )
      ],
    );
  }
}