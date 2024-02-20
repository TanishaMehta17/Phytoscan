import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';

// ignore: must_be_immutable
class PlantgalleryItemWidget extends StatelessWidget {
  PlantgalleryItemWidget({
    Key? key,
    this.onTapFrameFortyOne,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFrameFortyOne;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            "Popular Plants",
            style: CustomTextStyles.headlineLargeDMSerifDisplayGray90002,
          ),
        ),
        SizedBox(height: 33.v),
        SizedBox(
          height: 321.v,
          width: 394.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgC1,
                height: 222.v,
                width: 158.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 17.h),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 25.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          onTapFrameFortyOne!.call();
                        },
                        child: SizedBox(
                          height: 296.v,
                          width: 185.h,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 32.h),
                                  decoration:
                                      AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder25,
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
                                      SizedBox(height: 26.v),
                                      Text(
                                        "Neem",
                                        style: theme.textTheme.headlineMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgN1,
                                height: 230.v,
                                width: 121.h,
                                alignment: Alignment.topCenter,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 57.v),
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
                            SizedBox(height: 26.v),
                            Text(
                              "Castor",
                              style: theme.textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
