import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 137.v,
        width: 374.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.fillGreen.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 108.h),
                      child: Text(
                        "Amla",
                        style:
                            CustomTextStyles.headlineSmallDMSerifTextGreen90005,
                      ),
                    ),
                    Container(
                      width: 136.h,
                      margin: EdgeInsets.only(right: 31.h),
                      child: Text(
                        "Phytonutrients and \nantioxidant",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.fillGreenTL16,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgDrop,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgBrightness,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsUp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillGreenTL16,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup56,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle17,
              height: 137.v,
              width: 160.h,
              radius: BorderRadius.circular(
                25.h,
              ),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
