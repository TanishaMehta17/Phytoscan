import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.green5002,
                  borderRadius: BorderRadius.circular(30.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGreen => BoxDecoration(
        color: appTheme.green5002,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.green900,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray10001,
        borderRadius: BorderRadius.circular(15.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillBlueGray1 => BoxDecoration(
        color: appTheme.blueGray10003,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGreen1 => BoxDecoration(
        color: appTheme.green5002,
      );
  static BoxDecoration get fillGreenTL16 => BoxDecoration(
        color: appTheme.green400,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillGreenTL25 => BoxDecoration(
        color: appTheme.green5002,
        borderRadius: BorderRadius.circular(25.h),
      );
}
