import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      decoration: AppDecoration.fillGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle131,
            height: 137.v,
            width: 160.h,
            radius: BorderRadius.circular(
              25.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 35.h,
              top: 15.v,
              bottom: 15.v,
            ),
            child: Column(
              children: [
                Text(
                  "Aloe-vera",
                  style: CustomTextStyles.headlineSmallPrimaryContainer,
                ),
                SizedBox(height: 1.v),
                Text(
                  "High water content",
                  style: CustomTextStyles.bodyLargeDMSerifDisplay,
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 167.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgDrop,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgWeatherSunny,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsUp,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPhoto,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
