import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/widgets/app_bar/appbar_leading_image.dart';
import 'package:phytoscan/widgets/app_bar/custom_app_bar.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';

class Iphone14ProMaxThirtyfourScreen extends StatefulWidget {
  const Iphone14ProMaxThirtyfourScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxThirtyfourScreen> createState() => _Iphone14ProMaxThirtyfourScreenState();
}

class _Iphone14ProMaxThirtyfourScreenState extends State<Iphone14ProMaxThirtyfourScreen> {
  bool isfav=false;
  void change()
  {
    setState(() {
      isfav=!isfav;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray200,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildFrameTwentyFour(context),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildFrameSeventeen(context),
                            SizedBox(height: 27.v),
                            _buildFrameThirteen(context),
                            SizedBox(height: 13.v),
                            _buildBiologicalName(context),
                            SizedBox(height: 15.v),
                            _buildUses(context),
                            SizedBox(height: 18.v),
                            _buildNinetyEight(context),
                            SizedBox(height: 17.v),
                            _buildEightyFive(context),
                            SizedBox(height: 29.v),
                            Row(children: [
                              Text("Price:", style: theme.textTheme.titleLarge),
                              Padding(
                                  padding: EdgeInsets.only(left: 123.h),
                                  child: Text("200Rs",
                                      style: CustomTextStyles
                                          .titleLargeGreen90002_1))
                            ]),
                            SizedBox(height: 37.v),
                            CustomElevatedButton(
                                text: "Buy Now",
                                margin:
                                    EdgeInsets.only(left: 15.h, right: 13.h),
                                rightIcon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgShoppingcart,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize)),
                                alignment: Alignment.center),
                            SizedBox(height: 13.v)
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrameTwentyFour(BuildContext context) {
    return SizedBox(
        height: 449.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle406,
              height: 449.v,
              width: 430.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center),
          CustomAppBar(
              leadingWidth: double.maxFinite,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeftBlueGray70001,
                  margin: EdgeInsets.only(left: 36.h, right: 381.h),
                  onTap: () {
                    onTapArrowLeft(context);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildFrameSeventeen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 12.h, right: 22.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("Coriander Plant",
                          style: theme.textTheme.displaySmall)),
                  Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: CustomIconButton(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillGreen,
                           onTap: ()=>change(),
                          child: Icon(
                            Icons.favorite,
                            size: 25,
                            color:isfav?Colors.redAccent: Color(0xFF3D6803),
                          )))
                ])));
  }

  /// Section Widget
  Widget _buildFrameThirteen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          child: Icon(
                            Icons.water_drop_outlined,
                            size: 30,
                          )))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          child: Icon(
                            Icons.wb_sunny_outlined,
                            size: 30,
                          )))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          child: Icon(
                            Icons.thermostat_auto_outlined,
                            size: 30,
                          )))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          child: Icon(
                            Icons.collections_bookmark_outlined,
                            size: 30,
                          )))),
            ])));
  }

  /// Section Widget
  Widget _buildBiologicalName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 37.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child:
                  Text("Biological Name:", style: theme.textTheme.titleLarge)),
          Padding(
              padding: EdgeInsets.only(left: 17.h, bottom: 5.v),
              child: Text("Coriandrum Sativum",
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildUses(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 37.v, bottom: 15.v),
              child: Text("Uses:", style: theme.textTheme.titleLarge)),
          Container(
              width: 211.h,
              margin: EdgeInsets.only(left: 129.h),
              child: Text(
                  "It is used for curing respiratory and urinary complaints.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildNinetyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 32.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 35.v),
              child: Text("Medical Use:", style: theme.textTheme.titleLarge)),
          Container(
              width: 191.h,
              margin: EdgeInsets.only(left: 59.h),
              child: Text(
                  "It is used for relieving gastrointestinal discomfort.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 26.v),
          child: Text("Harmful Effect:", style: theme.textTheme.titleLarge)),
      Container(
          width: 219.h,
          margin: EdgeInsets.only(left: 30.h),
          child: Text("It might cause sleepiness and slowed breathing",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeGreen90002))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
