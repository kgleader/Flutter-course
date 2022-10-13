import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static const appBar = TextStyle(
    color: AppColors.black,
    fontSize: 20,
  );

  static const body1 = TextStyle(
    color: AppColors.white,
    fontSize: 50,
  );

  static TextStyle body2(double size) => TextStyle(
        color: AppColors.white,
        fontSize: size,
        fontWeight: FontWeight.w300,
      );
}
