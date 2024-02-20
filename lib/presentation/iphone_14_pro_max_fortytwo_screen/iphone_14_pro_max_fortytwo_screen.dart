import '../iphone_14_pro_max_fortytwo_screen/widgets/creditcardcomponentlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/widgets/custom_outlined_button.dart';

class Iphone14ProMaxFortytwoScreen extends StatelessWidget {
  const Iphone14ProMaxFortytwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 27.v),
                child: Column(children: [
                  _buildArrowLeftRow(context),
                  SizedBox(height: 36.v),
                  _buildNineteenRow(context),
                  SizedBox(height: 48.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 18.h),
                          child: Text("Select Payment Mode",
                              style:
                                  CustomTextStyles.headlineSmallBlack90024))),
                  SizedBox(height: 20.v),
                  _buildCreditCardComponentList(context),
                  SizedBox(height: 31.v),
                  _buildTwelveRow(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildProceedToOrderButton(context)));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftBlueGray70001,
                  height: 23.v,
                  width: 13.h,
                  margin: EdgeInsets.only(top: 8.v, bottom: 16.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(left: 84.h),
                  child: Text("Payment Methods",
                      style: CustomTextStyles.displaySmallBluegray900))
            ]));
  }

  /// Section Widget
  Widget _buildNineteenRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v),
        decoration: AppDecoration.outlineLightBlueA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("Order Total",
                  style: CustomTextStyles.headlineSmallGray900)),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("Rs 1100",
                  style: CustomTextStyles.headlineSmallBlack900_2))
        ]));
  }

  /// Section Widget
  Widget _buildCreditCardComponentList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 21.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return CreditcardcomponentlistItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildTwelveRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgDownload41,
                  height: 33.v,
                  width: 47.h,
                  margin: EdgeInsets.only(bottom: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 4.v),
                  child: Text("Cash On Delivery",
                      style: CustomTextStyles.bodyLargeDMSerifDisplayBlack900)),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgMobile,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  radius: BorderRadius.circular(11.5.adaptSize),
                  margin: EdgeInsets.only(top: 5.v, right: 1.h, bottom: 10.v))
            ]));
  }

  /// Section Widget
  Widget _buildProceedToOrderButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 62.v,
        text: "Proceed To Order",
        margin: EdgeInsets.only(left: 34.h, right: 31.h, bottom: 19.v),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleLargeBlack900_1,
        onPressed: () {
          onTapProceedToOrderButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone14ProMaxFortythreeScreen when the action is triggered.
  onTapProceedToOrderButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortythreeScreen);
  }
}
