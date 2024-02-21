import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/product/product_services.dart';
import 'package:phytoscan/widgets/app_bar/appbar_leading_image.dart';
import 'package:phytoscan/widgets/app_bar/custom_app_bar.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';

class Iphone14ProMaxThirtynineScreen extends StatefulWidget {
  const Iphone14ProMaxThirtynineScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxThirtynineScreen> createState() => _Iphone14ProMaxThirtynineScreenState();
}

class _Iphone14ProMaxThirtynineScreenState extends State<Iphone14ProMaxThirtynineScreen> {
  late Product _product;
  @override
  void initState() {
    super.initState();
    // Initialize product with static details
    _product = Product(
      name: 'Mint Plant',
      description: 'It is used for Skin disease and to speed up wound healing',
      quantity: 1,
      images: [
        'C:/Users/ASUS/Desktop/flutter Projects/phytoscan/assets/images/img_rectangle_40_2.png',
      ],
      soldBy: "MOHIT",
      price: 200,
    );
  }
  bool isfav=false;
  void change()
  {
    setState(() {
      isfav=!isfav;
    });
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
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16.v),
                            _buildFrameSeventeen(context),
                            SizedBox(height: 27.v),
                            _buildFrameThirteen(context),
                            SizedBox(height: 13.v),
                            Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text("Biological Name:",
                                              style:
                                                  theme.textTheme.titleLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 17.h, bottom: 5.v),
                                          child: Text("Mentha",
                                              style: CustomTextStyles
                                                  .titleLargeGreen90002))
                                    ])),
                            SizedBox(height: 16.v),
                            _buildUses(context),
                            SizedBox(height: 18.v),
                            _buildMedicalUse(context),
                            SizedBox(height: 17.v),
                            _buildHarmfulEffect(context),
                            SizedBox(height: 29.v),
                            Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Row(children: [
                                  Text("Price:",
                                      style: theme.textTheme.titleLarge),
                                  Padding(
                                      padding: EdgeInsets.only(left: 123.h),
                                      child: Text("200Rs",
                                          style: CustomTextStyles
                                              .titleLargeGreen90002_1))
                                ])),
                            SizedBox(height: 26.v),
                            _buildFrameNineteen(context)
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
              imagePath: ImageConstant.imgRectangle4012,
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
            padding: EdgeInsets.only(left: 25.h, right: 35.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text("Mint Plant",
                          style: theme.textTheme.displaySmall)),
                  Padding(
                      padding: EdgeInsets.only(top: 9.v),
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
            padding: EdgeInsets.symmetric(horizontal: 29.h),
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
  Widget _buildUses(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 29.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 37.v, bottom: 16.v),
              child: Text("Uses:", style: theme.textTheme.titleLarge)),
          Container(
              width: 207.h,
              margin: EdgeInsets.only(left: 122.h),
              child: Text("It is used to treat indigestion and for oral care.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildMedicalUse(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 57.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 35.v),
              child: Text("Medical Use:", style: theme.textTheme.titleLarge)),
          Container(
              width: 179.h,
              margin: EdgeInsets.only(left: 52.h),
              child: Text(
                  "It is used to improve brain power and boost immunity.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildHarmfulEffect(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 13.h, right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 26.v),
                      child: Text("Harmful Effect:",
                          style: theme.textTheme.titleLarge)),
                  Container(
                      width: 218.h,
                      margin: EdgeInsets.only(left: 25.h),
                      child: Text("Might act as a trigger for GERD symptoms.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleLargeGreen90002))
                ])));
  }

  /// Section Widget
  Widget _buildFrameNineteen(BuildContext context) {
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
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 11.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          SizedBox(height: 20.v),
          CustomElevatedButton(
              text: "Add To Cart",
               onPressed: () => addToCart(),
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 30.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgShoppingcart,
                      height: 40.adaptSize,
                      width: 40.adaptSize)))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
