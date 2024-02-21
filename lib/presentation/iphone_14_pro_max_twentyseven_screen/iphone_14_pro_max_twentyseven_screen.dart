import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/product/product_services.dart';
import 'package:phytoscan/theme/custom_text_style.dart';
import 'package:phytoscan/theme/theme_helper.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';
import 'package:phytoscan/widgets/custom_image_view.dart';
import 'dart:io';
class Iphone14ProMaxTwentysevenScreen extends StatefulWidget {
  const Iphone14ProMaxTwentysevenScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxTwentysevenScreen> createState() => _Iphone14ProMaxTwentysevenScreenState();
}

class _Iphone14ProMaxTwentysevenScreenState extends State<Iphone14ProMaxTwentysevenScreen> {
  late Product _product;
  bool isfav=false;
  void change()
  {
    setState(() {
      isfav=!isfav;
    });
  }
  @override
  void initState() {
    super.initState();
    // Initialize product with static details
    _product = Product(
      name: 'Ashwagandha',
      description: 'It is used for Skin disease and to speed up wound healing',
      quantity: 1,
      images: [
        'C:/Users/ASUS/Desktop/flutter Projects/phytoscan/assets/images/img_rectangle_40_2.png',
      ],
      soldBy: "MOHIT",
      price: 200,
    );
  }
  @override
  Widget build(BuildContext context) {
        final ProductDetailsServices productDetailsServices =
        ProductDetailsServices();
void addToCart() {
      productDetailsServices.addToCart(
        context: context,
        product: _product,
      );
      //print("sss");
      Navigator.pushNamed(
        context,
        AppRoutes.cartScreen,
        arguments: _product,
      );
    }
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
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 15.v),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildFrameSeventeen(context),
                            SizedBox(height: 26.v),
                            _buildFrameThirteen(context),
                            SizedBox(height: 13.v),
                            _buildBiologicalName(context),
                            SizedBox(height: 16.v),
                            _buildUse(context),
                            SizedBox(height: 18.v),
                            _buildMedicalUse(context),
                            SizedBox(height: 17.v),
                            _buildHarmfulEffect(context),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Text("Price:", style: theme.textTheme.titleLarge),
                              Padding(
                                  padding: EdgeInsets.only(left: 123.h),
                                  child: Text("250Rs",
                                      style: CustomTextStyles
                                          .titleLargeGreen90002_1))
                            ]),
                            SizedBox(height: 37.v),
                            CustomElevatedButton(
                                text: "Add To Cart",
                                margin:
                                    EdgeInsets.only(left: 15.h, right: 13.h),
                                rightIcon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgShoppingcart,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize)),
                                alignment: Alignment.center,onPressed: () => addToCart(),)
                                ,
                            SizedBox(height: 10.v)
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrameTwentyFour(BuildContext context) {
    return SizedBox(
        height: 449.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle40449x430,
              height: 449.v,
              width: 430.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftBlueGray70001,
              height: 23.v,
              width: 13.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 36.h, top: 23.v),
              onTap: () {
                onTapImgArrowLeft(context);
              })
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
                children: [
                  Text("Ashwagandha", style: theme.textTheme.displaySmall),
                  Padding(
                      padding: EdgeInsets.only(top: 5.v),
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
        padding: EdgeInsets.only(right: 46.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child:
                  Text("Biological Name:", style: theme.textTheme.titleLarge)),
          Padding(
              padding: EdgeInsets.only(left: 17.h, bottom: 5.v),
              child: Text("Withania Somnifera",
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildHarmfulEffect(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 27.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 53.v),
              child:
                  Text("Harmful Effect:", style: theme.textTheme.titleLarge)),
          Container(
              width: 196.h,
              margin: EdgeInsets.only(left: 30.h),
              child: Text("Might upset stomach,diarrhea and vomitting",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  Widget _buildMedicalUse(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 27.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 53.v),
              child: Text("Medical Use:", style: theme.textTheme.titleLarge)),
          Container(
              width: 196.h,
              margin: EdgeInsets.only(left: 50.h),
              child: Text("Enhance function of brain and nervous system",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  Widget _buildUse(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 27.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 53.v),
              child: Text("Uses:", style: theme.textTheme.titleLarge)),
          Container(
              width: 196.h,
              margin: EdgeInsets.only(left: 120.h),
              child: Text("Increase muscle and strength and lowers blood sugar",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Common widget
  Widget _buildEightySix(
    BuildContext context, {
    required String medicalUseText,
    required String enhanceFunctionText,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(top: 17.v, bottom: 35.v, right: 70.h),
          child: Text(medicalUseText,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.lightGreen900))),
      Container(
          width: 180.h,
          margin: EdgeInsets.only(left: 59.h),
          child: Text(enhanceFunctionText,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeGreen90002
                  .copyWith(color: appTheme.green90002)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
