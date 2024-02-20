import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 351.v,
          width: 185.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 32.h),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 173.v,
                        width: 121.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(50.h),
                          ),
                        ),
                      ),
                      SizedBox(height: 27.v),
                      Text(
                        "Tulsi",
                        style: theme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTRemovebgPreview,
                height: 232.v,
                width: 112.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
        Container(
          height: 305.v,
          width: 185.h,
          margin: EdgeInsets.only(top: 46.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 239.v,
                  width: 185.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 239.v,
                          width: 185.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              25.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 173.v,
                                width: 121.h,
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(50.h),
                                  ),
                                ),
                              ),
                              Text(
                                "Rose",
                                style: theme.textTheme.headlineMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img3437957f2ddf091,
                height: 166.v,
                width: 155.h,
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
