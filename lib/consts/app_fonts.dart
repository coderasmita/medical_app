import 'package:medical_app/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import 'consts.dart';

class AppFonts {
  static String nunito = "nunito",
      nunitoBold = "nunitoBold",
      nunitoLight = "nunitoLight",
      nunitoExtraBold = "nunitoExtraBold";
}

class AppSizes {
  static const size12 = 12.0,
      size14 = 14.0,
      size16 = 16.0,
      size18 = 18.0,
      size20 = 20.0,
      size24 = 24.0,
      size28 = 28.0,
      size40 = 40.0;
}

class AppStyles {
  static normal({
    String? title,
    Color? color = AppColors.textColor,
    double? size = 14,
    TextAlign alignment = TextAlign.center,
  }) {
    return title!.text
        .size(14)
        .color(AppColors.textColor)
        .align(alignment)
        .make();
  }

  static bold({
    String? title,
    Color? color = AppColors.textColor,
    double? size = 14,
    TextAlign alignment = TextAlign.center,
  }) {
    return title!.text
        .size(size)
        .color(color)
        .fontFamily(AppFonts.nunitoBold)
        .align(alignment)
        .make();
  }
}
