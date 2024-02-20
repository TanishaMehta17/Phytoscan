import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:phytoscan/widgets/app_bar/appbar_leading_image.dart';
import 'package:phytoscan/widgets/app_bar/custom_app_bar.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';
import 'package:phytoscan/product/product_services.dart';
import 'package:provider/provider.dart';
 import 'dart:io';
class Iphone14ProMaxTwelveScreen extends StatefulWidget {
  const Iphone14ProMaxTwelveScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxTwelveScreen> createState() =>
      _Iphone14ProMaxTwelveScreenState();
}

class _Iphone14ProMaxTwelveScreenState
    extends State<Iphone14ProMaxTwelveScreen> {
  late Product _product;
 

List<File> convertStringsToFiles(List<String> filePaths) {
  List<File> files = [];
  for (String path in filePaths) {
    if (path.isNotEmpty) {
      File file = File(path);
      if (file.existsSync()) {
        files.add(file);
      } else {
        print('File does not exist at path: $path');
        // Handle the case where the file doesn't exist if needed
      }
    }
  }
  return files;
}


  @override
  void initState() {
    super.initState();
    // Initialize product with static details
    _product = Product(
      name: 'Jasmine',
      description: 'It is used for Skin disease and to speed up wound healing',
      quantity: 1,
      images: [
        'C:/Users/ASUS/Desktop/flutter Projects/phytoscan/assets/images/img_rectangle_40_2.png',
      ],
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
      Navigator.pushNamed(
        context,
        AppRoutes.cartScreen,
        arguments: _product,
      );
    }
    void AddProduct() {
    
      productDetailsServices.ADDProduct(
        context: context,
        name: 'Jasmine',
        description:  'It is used for Skin disease and to speed up wound healing',
        price: double.parse("200"),
        quantity: double.parse("1"),
        images: convertStringsToFiles([
        'C:/Users/ASUS/Desktop/flutter Projects/phytoscan/assets/images/img_rectangle_40_2.png',
      ],)
      );
    addToCart();
    
  }
    
    // void addToCart() {
    //   // Access UserProvider to add the product to the cart
    //   final userProvider = context.read<UserProvider>();
    //   // Add the entire product to the cart
    //   userProvider.addToCart(_product);
    //   // Navigate to the cart screen
    //   Navigator.pushNamed(
    //     context,
    //     AppRoutes.cartScreen,
    //     arguments: _product,
    //   );
    // }

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
                          EdgeInsets.symmetric(horizontal: 6.h, vertical: 12.v),
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
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
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
                                          child: Text("Jasminum",
                                              style: CustomTextStyles
                                                  .titleLargeGreen90002))
                                    ])),
                            SizedBox(height: 15.v),
                            _buildUses(context),
                            SizedBox(height: 11.v),
                            _buildMedicalUse(context),
                            SizedBox(height: 17.v),
                            _buildHarmfulEffect(context),
                            SizedBox(height: 29.v),
                            Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(children: [
                                  Text("Price:",
                                      style: theme.textTheme.titleLarge),
                                  Padding(
                                      padding: EdgeInsets.only(left: 123.h),
                                      child: Text("200Rs",
                                          style: CustomTextStyles
                                              .titleLargeGreen90002_1))
                                ])),
                            SizedBox(height: 37.v),
                            CustomElevatedButton(
                                text: "Add To Cart",
                                onPressed: () => AddProduct(),
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 14.h),
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
              imagePath: ImageConstant.imgRectangle402,
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
            padding: EdgeInsets.only(left: 13.h, right: 23.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text("Jasmine Plant",
                          style: theme.textTheme.displaySmall)),
                  Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: CustomIconButton(
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillGreen,
                          child: const Icon(
                            Icons.favorite,
                            size: 25,
                            color: Color(0xFF3D6803),
                          )))
                ])));
  }

  /// Section Widget
  Widget _buildFrameThirteen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.h),
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
                          child: const Icon(
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
        padding: EdgeInsets.only(left: 1.h, right: 3.h),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.only(top: 37.v, bottom: 23.v),
              child: Text("Uses:", style: theme.textTheme.titleLarge)),
          Container(
              width: 222.h,
              margin: EdgeInsets.only(left: 129.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text:
                            "It is used for Skin disease and to speed up wound healing",
                        style: CustomTextStyles.titleLargeff1e462820),
                    TextSpan(text: " ")
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildMedicalUse(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 33.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 35.v),
              child: Text("Medical Use:", style: theme.textTheme.titleLarge)),
          Container(
              width: 192.h,
              margin: EdgeInsets.only(left: 59.h),
              child: Text("Liver disease (hepatitis),abdominal pain(dydentry).",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Section Widget
  Widget _buildHarmfulEffect(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 26.v),
              child:
                  Text("Harmful Effect:", style: theme.textTheme.titleLarge)),
          Container(
              width: 225.h,
              margin: EdgeInsets.only(left: 30.h),
              child: Text("Might cause allergic reactions in some people.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeGreen90002))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}