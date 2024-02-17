import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/routes/app_routes.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';

class Iphone14ProMaxOneScreen extends StatelessWidget {
  const Iphone14ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone14ProMax),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.h, vertical: 79.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Container(
                              width: 339.h,
                              margin: EdgeInsets.only(left: 5.h, right: 75.h),
                              child: Text("Home is Where \nMy Plants are",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .displayMediumInriaSerifWhiteA700)),
                          SizedBox(height: 9.v),
                          Container(
                              width: 387.h,
                              margin: EdgeInsets.only(right: 32.h),
                              child: Text(
                                  "There are many variation passages but the majority have suffered",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .headlineSmallInriaSerifWhiteA700)),
                          SizedBox(height: 15.v),
                          CustomElevatedButton(
                              height: 58.v,
                              text: "Get Started",
                              margin: EdgeInsets.symmetric(horizontal: 57.h),
                              buttonStyle: CustomButtonStyles.fillBlueGray,
                              buttonTextStyle: CustomTextStyles
                                  .displaySmallInriaSerifOnPrimaryContainer,
                              onPressed: () {
                                onTapGetStarted(context);
                              },
                              alignment: Alignment.center)
                        ])))));
  }

  /// Navigates to the frameEightScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameEightScreen);
  }
}
