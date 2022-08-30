import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_divider_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_text.dart';

class SectionAttributes extends StatelessWidget {
  const SectionAttributes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        const DefaultDividerWidget(),
        const SizedBox(
          height: 8,
        ),
        const DefaultText(
          text: "Atributos",
          fontSize: FontSizes.subtitle,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              5,
              (index) => attributeField(),
            )
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        const DefaultDividerWidget(),
      ],
    );
  }

  Widget attributeField() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultText(
            text: "PRE",
            color: AppColors.red[300],
          ),
          const SizedBox(
            height: 4,
          ),
          DefaultText(
            text: "4",
            fontSize: FontSizes.subtitle,
            color: AppColors.red[300],
          )
        ],
      ),
    );
  }
}
