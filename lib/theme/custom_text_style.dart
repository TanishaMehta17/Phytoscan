import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.54),
        fontSize: 19.fSize,
      );
  static get bodyLargeBlack90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.64),
        fontSize: 18.fSize,
      );
  static get bodyLargeDMSerifDisplay =>
      theme.textTheme.bodyLarge!.dMSerifDisplay;
  static get bodyLargeDMSerifDisplayBlack900 =>
      theme.textTheme.bodyLarge!.dMSerifDisplay.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeDMSerifDisplayBluegray10002 =>
      theme.textTheme.bodyLarge!.dMSerifDisplay.copyWith(
        color: appTheme.blueGray10002,
      );
  static get bodyLargeGreen900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green900,
      );
  static get bodyLargeGreen90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green900,
        fontSize: 18.fSize,
      );
  // Display text style
  static get displayMediumBluegray900 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 48.fSize,
      );
  static get displayMediumDMSerifTextGreen900 =>
      theme.textTheme.displayMedium!.dMSerifText.copyWith(
        color: appTheme.green900,
        fontSize: 40.fSize,
      );
  static get displayMediumGreen90006 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.green90006,
        fontSize: 40.fSize,
      );
  static get displayMediumInriaSerifWhiteA700 =>
      theme.textTheme.displayMedium!.inriaSerif.copyWith(
        color: appTheme.whiteA700,
        fontSize: 48.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallBluegray900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get displaySmallDMSerifTextGray90001 =>
      theme.textTheme.displaySmall!.dMSerifText.copyWith(
        color: appTheme.gray90001,
      );
  static get displaySmallDMSerifTextGreen90007 =>
      theme.textTheme.displaySmall!.dMSerifText.copyWith(
        color: appTheme.green90007,
        fontSize: 38.fSize,
      );
  static get displaySmallDMSerifTextff09642f =>
      theme.textTheme.displaySmall!.dMSerifText.copyWith(
        color: Color(0XFF09642F),
      );
  static get displaySmallDMSerifTextff263e30 =>
      theme.textTheme.displaySmall!.dMSerifText.copyWith(
        color: Color(0XFF263E30),
      );
  static get displaySmallGray90002 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get displaySmallGreen90003 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.green90003,
      );
  static get displaySmallInriaSerifOnPrimaryContainer =>
      theme.textTheme.displaySmall!.inriaSerif.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 38.fSize,
        fontWeight: FontWeight.w700,
      );
  static get displaySmallInterBlack900 =>
      theme.textTheme.displaySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 36.fSize,
      );
  // Headline text style
  static get headlineLargeDMSerifDisplayErrorContainer =>
      theme.textTheme.headlineLarge!.dMSerifDisplay.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 32.fSize,
      );
  static get headlineLargeDMSerifDisplayGray90002 =>
      theme.textTheme.headlineLarge!.dMSerifDisplay.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineLargeDMSerifDisplayGray90003 =>
      theme.textTheme.headlineLarge!.dMSerifDisplay.copyWith(
        color: appTheme.gray90003,
      );
  static get headlineLargeDMSerifDisplayGreen900 =>
      theme.textTheme.headlineLarge!.dMSerifDisplay.copyWith(
        color: appTheme.green900,
      );
  static get headlineLargeGreen900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.green900,
      );
  static get headlineMediumDMSerifTextGreen90003 =>
      theme.textTheme.headlineMedium!.dMSerifText.copyWith(
        color: appTheme.green90003,
        fontSize: 27.fSize,
      );
  static get headlineMediumGray90002 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.39),
      );
  static get headlineSmallBlack90024 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 24.fSize,
      );
  static get headlineSmallBlack900_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.45),
      );
  static get headlineSmallBlack900_2 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallDMSerifTextBlack900 =>
      theme.textTheme.headlineSmall!.dMSerifText.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallDMSerifTextGreen900 =>
      theme.textTheme.headlineSmall!.dMSerifText.copyWith(
        color: appTheme.green900,
      );
  static get headlineSmallDMSerifTextGreen90005 =>
      theme.textTheme.headlineSmall!.dMSerifText.copyWith(
        color: appTheme.green90005,
      );
  static get headlineSmallDMSerifTextff09642f =>
      theme.textTheme.headlineSmall!.dMSerifText.copyWith(
        color: Color(0XFF09642F),
      );
  static get headlineSmallDutch801XBdBTBluegray900 =>
      theme.textTheme.headlineSmall!.dutch801XBdBT.copyWith(
        color: appTheme.blueGray900.withOpacity(0.71),
      );
  static get headlineSmallErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineSmallInriaSerifWhiteA700 =>
      theme.textTheme.headlineSmall!.inriaSerif.copyWith(
        color: appTheme.whiteA700.withOpacity(0.53),
        fontSize: 24.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.62),
      );
  static get titleLargeBlack90020 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.27),
        fontSize: 20.fSize,
      );
  static get titleLargeBlack90020_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.67),
        fontSize: 20.fSize,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBluegray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.89),
      );
  static get titleLargeDMSerifTextBlack900 =>
      theme.textTheme.titleLarge!.dMSerifText.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
  static get titleLargeDMSerifTextBlack90020 =>
      theme.textTheme.titleLarge!.dMSerifText.copyWith(
        color: appTheme.black900.withOpacity(0.58),
        fontSize: 20.fSize,
      );
  static get titleLargeDMSerifTextBlack90020_1 =>
      theme.textTheme.titleLarge!.dMSerifText.copyWith(
        color: appTheme.black900.withOpacity(0.51),
        fontSize: 20.fSize,
      );
  static get titleLargeDMSerifTextBlack900_1 =>
      theme.textTheme.titleLarge!.dMSerifText.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeDMSerifTextff09642f =>
      theme.textTheme.titleLarge!.dMSerifText.copyWith(
        color: Color(0XFF09642F),
      );
  static get titleLargeGreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green400,
        fontSize: 20.fSize,
      );
  static get titleLargeGreen80001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green80001,
        fontSize: 20.fSize,
      );
  static get titleLargeGreen90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green90002,
        fontSize: 20.fSize,
      );
  static get titleLargeGreen90002_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green90002,
      );
  static get titleLargeGreen90006 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green90006,
        fontSize: 20.fSize,
      );
  static get titleLargeInterBluegray900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeInterGreen90004 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.green90004,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleLargeRed700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red700,
        fontSize: 20.fSize,
      );
  static get titleLargeff1e4628 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF1E4628),
      );
  static get titleLargeff1e462820 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF1E4628),
        fontSize: 20.fSize,
      );
}

extension on TextStyle {
  TextStyle get dMSerifText {
    return copyWith(
      fontFamily: 'DM Serif Text',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get dutch801XBdBT {
    return copyWith(
      fontFamily: 'Dutch801 XBd BT',
    );
  }

  TextStyle get dMSerifDisplay {
    return copyWith(
      fontFamily: 'DM Serif Display',
    );
  }

  TextStyle get inriaSerif {
    return copyWith(
      fontFamily: 'Inria Serif',
    );
  }
}
