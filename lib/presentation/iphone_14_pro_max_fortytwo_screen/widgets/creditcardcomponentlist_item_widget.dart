import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';

// ignore: must_be_immutable
class CreditcardcomponentlistItemWidget extends StatelessWidget {
  const CreditcardcomponentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDownload1,
            height: 22.v,
            width: 27.h,
            margin: EdgeInsets.only(left: 5.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Text(
              "Credit Card",
              style: CustomTextStyles.bodyLargeDMSerifDisplayBlack900,
            ),
          ),
          Spacer(),
          SizedBox(
            height: 23.adaptSize,
            width: 23.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMobile,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  radius: BorderRadius.circular(
                    11.5.adaptSize,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onError,
                      borderRadius: BorderRadius.circular(
                        7.h,
                      ),
                      border: Border.all(
                        color: appTheme.tealA40001,
                        width: 1.h,
                      ),
                    ),
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
