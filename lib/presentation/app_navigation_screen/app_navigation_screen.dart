import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/routes/app_routes.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:const Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration:const BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortyNine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFortynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxSeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frameEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFortytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - TwentySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxTwentysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - TwentySeven",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxTwentysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxThirtytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - TwentyFive",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxTwentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortySeven",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxFortysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortyThree",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxFortythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyThree",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxThirtythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Thirty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxThirtyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyFour",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxThirtyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyFive",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxThirtyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxThirtysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtySeven",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxThirtysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyEight",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxThirtyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortyEight",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxFortyeightScreen),
                        ),
                         _buildScreenTitle(
                          context,
                          screenTitle: "otp - trader",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.otp),
                        ),

                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxThirtyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - ThirtyNine",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxThirtynineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Forty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFortyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFortyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxEighteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Twenty",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxTwentyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "iPhone 14 Pro Max - Nineteen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone14ProMaxNineteenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortySix",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFortysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - FortyFour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxFortyfourScreen),
                        ),
                         _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 Pro Max - Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ProMaxNineteenPage),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
