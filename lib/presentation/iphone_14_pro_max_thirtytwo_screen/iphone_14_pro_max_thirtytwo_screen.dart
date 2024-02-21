import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/product/product_services.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';

class Iphone14ProMaxThirtytwoScreen extends StatefulWidget {
  const Iphone14ProMaxThirtytwoScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxThirtytwoScreen> createState() => _Iphone14ProMaxThirtytwoScreenState();
}

class _Iphone14ProMaxThirtytwoScreenState extends State<Iphone14ProMaxThirtytwoScreen> {
  late Product _product;
  @override
  void initState() {
    super.initState();
    // Initialize product with static details
    _product = Product(
      name: 'Betel Plant',
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
                            SizedBox(height: 15.v),
                            Row(children: [
                              Text("Biological Name:",
                                  style: theme.textTheme.titleLarge),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 17.h, bottom: 3.v),
                                  child: Text("Piper Betle",
                                      style: CustomTextStyles
                                          .titleLargeGreen90002))
                            ]),
                            SizedBox(height: 16.v),
                            _buildUses(context),
                            SizedBox(height: 19.v),
                            _buildMedicalUse(context),
                            SizedBox(height: 17.v),
                            _buildHarmfulEffect(context),
                            SizedBox(height: 34.v),
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
                                 text: "Add To Cart",
                                onPressed: () => addToCart(),
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
                            SizedBox(height: 14.v)
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
              imagePath: ImageConstant.imgRectangle401,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text("Betel Plant",
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
  Widget _buildUses(BuildContext context) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(top: 37.v, bottom: 15.v),
          child: Text("Uses:", style: theme.textTheme.titleLarge)),
      Container(
          width: 220.h,
          margin: EdgeInsets.only(left: 129.h),
          child: Text(
              "It has helped in changing the chewing habits of people over time.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeGreen90002))
    ]);
  }

  /// Section Widget
  Widget _buildMedicalUse(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 39.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 35.v),
              child: Text("Medical Use:", style: theme.textTheme.titleLarge)),
          Container(
              width: 184.h,
              margin: EdgeInsets.only(left: 59.h),
              child: Text("Betel leaves are used as a stimulant,an antiseptic",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildHarmfulEffect(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 22.v),
              child:
                  Text("Harmful Effect:", style: theme.textTheme.titleLarge)),
          Container(
              width: 206.h,
              margin: EdgeInsets.only(left: 30.h),
              child: Text("It slows down the heart beat rate.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
