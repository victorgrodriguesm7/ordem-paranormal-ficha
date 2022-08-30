import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/font_sizes.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/circular_profile.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/default_text.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/shortcut_attribute.dart';

class SectionProfile extends StatelessWidget {
  const SectionProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const CircularProfile(),
              const SizedBox(
                height: 8,
              ),
              Column(
                children: const [
                  DefaultText(
                    text: "Next: 5%",
                    fontSize: FontSizes.subtitle,
                  ),
                  DefaultText(
                    text: "Especialista",
                    fontSize: FontSizes.subtitle,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const DefaultText(
                text: "Atual/Total",
                fontSize: FontSizes.subtitle,
              ),
              const SizedBox(
                height: 8,
              ),
              ...List.generate(
                3,
                (index) {
                  return const ShortcutAttribute();
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
