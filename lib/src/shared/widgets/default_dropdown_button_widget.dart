import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';

class DropdownItem<T> {
  final String label;
  final T value;

  DropdownItem({
    required this.label,
    required this.value
  });
}


class DefaultDropdownButton<T> extends StatelessWidget {
  final String label;
  final List<DropdownItem> items;
  final Function(T?)? onChanged;
  final T? value;

  const DefaultDropdownButton({
    Key? key,
    required this.label,
    required this.items,
    required this.value,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: TextStyle(
          color: AppColors.white,
          fontSize: FontSizes.subtitle
        )),
        DropdownButtonFormField<T>(
          items: items.map((item) => DropdownMenuItem<T>(
              value: item.value,
              child: Text(item.label)
            )
          ).toList(),
          onChanged: onChanged,
          value: value,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.darkWhite,
            contentPadding: const EdgeInsets.symmetric(horizontal: 4),
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
        )
      ]
    );
  }
}