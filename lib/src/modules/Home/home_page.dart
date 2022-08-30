import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';
import 'package:ordem_paranormal_ficha/src/modules/Home/sections/section_attributes.dart';
import 'package:ordem_paranormal_ficha/src/modules/Home/sections/section_body.dart';
import 'package:ordem_paranormal_ficha/src/modules/Home/sections/section_profile.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/custom_app_bar_widget.dart';
import 'package:ordem_paranormal_ficha/src/shared/widgets/custom_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: CustomAppBar(
        title: "Carlos",
        actions: [
          CustomButtom(
            onPressed: () {},
            child: const Icon(Icons.settings),
          )
        ],
        leading: Image.asset("assets/profile.png"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SectionProfile(),
              SectionAttributes(),
              SectionBody(),
            ],
          ),
        ),
      ),
    );
  }
}
