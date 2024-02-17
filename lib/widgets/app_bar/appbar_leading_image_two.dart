import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingImageTwo extends StatelessWidget {
  AppbarLeadingImageTwo({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder20,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 23.v,
          width: 13.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
      ),
    );
  }
}
