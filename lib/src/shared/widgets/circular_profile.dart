import 'package:flutter/material.dart';
import 'package:ordem_paranormal_ficha/src/core/color.dart';

class CircularProfile extends StatelessWidget {
  final String? path;
  final double size;

  const CircularProfile({Key? key, this.path, this.size = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundColor: AppColors.black,
      radius: size,
      backgroundImage: path != null ? AssetImage(path!) : null,
      backgroundColor: AppColors.darkWhite,
      child: Icon(
        Icons.person,
        size: size * 2,
      ),
    );
  }
}
