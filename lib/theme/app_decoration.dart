import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green5002,
      );
  static BoxDecoration get fillGreen40002 => BoxDecoration(
        color: appTheme.green40002,
      );
  static BoxDecoration get fillGreen800 => BoxDecoration(
        color: appTheme.green800,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime200,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientLightGreenAToLightGreen => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightGreenA700,
            appTheme.lightGreen300Ef,
            appTheme.lightGreen600,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.27),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.27),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray100,
          width: 5.h,
        ),
      );
  static BoxDecoration get outlineLightBlueA => BoxDecoration(
        color: appTheme.tealA400,
        border: Border.all(
          color: appTheme.lightBlueA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );
  static BorderRadius get circleBorder86 => BorderRadius.circular(
        86.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get roundedBorder93 => BorderRadius.circular(
        93.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
