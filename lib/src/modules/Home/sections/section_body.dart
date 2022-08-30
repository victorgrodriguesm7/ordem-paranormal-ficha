import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_text.dart';

class SectionBody extends StatelessWidget {
  const SectionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        ...List.generate(
          7,
          (index) {
            return menuWidget();
          },
        )
      ],
    );
  }

  Widget menuWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DefaultText(
            text: "Ataques",
            fontSize: FontSizes.subtitle,
          ),
          Icon(
            Icons.chevron_right,
            color: AppColors.white,
          )
        ],
      ),
    );
  }
}
