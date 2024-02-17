import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/routes/app_routes.dart';

class FrameEightScreen extends StatelessWidget {
  const FrameEightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE0EFE2),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle2,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(height: 30),
                Text("Welcome Back",
                    style: CustomTextStyles.displayMediumBluegray900),
                SizedBox(height: 5),
                Text(
                  "Login in to your account",
                  style: CustomTextStyles.headlineSmallBlack900,
                ),
                SizedBox(height: 30),
                _buildConsumer(context),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConsumer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFrameThree(
            context,
            traderText: "Consumer",
            imagePath: ImageConstant.imgEllipse1,
            onTapFrameThree: () => onTapFrameThree(context),
          ),
          _buildFrameThree(
            context,
            traderText: "Trader",
            imagePath: "assets/images/trader.png",
            onTapFrameThree: () => onTapFrameThree1(context),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameThree(
    BuildContext context, {
    required String traderText,
    required String imagePath,
    required VoidCallback onTapFrameThree,
  }) {
    return GestureDetector(
      onTap: onTapFrameThree,
      child: Column(
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 100,
            width: 100,
            radius: BorderRadius.circular(50),
          ),
          SizedBox(height: 10),
          Text(
            traderText,
            style: CustomTextStyles.headlineSmallBlack900_2.copyWith(
              color: appTheme.black900,
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the iphone14ProMaxThreeScreen when the action is triggered.
  void onTapFrameThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThreeScreen);
  }

  /// Navigates to the iphone14ProMaxFourScreen when the action is triggered.
  void onTapFrameThree1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFourScreen);
  }
}
