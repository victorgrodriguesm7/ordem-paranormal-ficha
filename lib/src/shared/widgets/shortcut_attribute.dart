import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/custom_buttom.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_text.dart';

class ShortcutAttribute extends StatelessWidget {
  const ShortcutAttribute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          DefaultText(
            text: "PV",
            color: AppColors.red[300],
          ),
          const SizedBox(
            width: 8,
          ),
          defaultMiniontainer(value: '-5'),
          const SizedBox(
            width: 8,
          ),
          defaultMiniontainer(
            value: '-',
          ),
          const SizedBox(
            width: 8,
          ),
          const DefaultText(
            text: "10/20",
          ),
          const SizedBox(
            width: 8,
          ),
          defaultMiniontainer(value: '-5'),
          const SizedBox(
            width: 8,
          ),
          defaultMiniontainer(
            value: '+',
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }

  Widget defaultMiniontainer({required String value}) {
    return CustomButtom(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        width: 22,
        height: 22,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        decoration: BoxDecoration(
            color: AppColors.darkWhite, borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: DefaultText(
            text: value,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
