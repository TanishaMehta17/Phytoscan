import 'package:flutter/material.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_page/iphone_14_pro_max_nineteen_page.dart';
import 'package:phytoscan/providers/userprovider.dart';

import 'package:phytoscan/widgets/custom_bottom_bar.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';
import 'package:phytoscan/widgets/custom_text_form_field.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxEighteenScreen extends StatelessWidget {
  Iphone14ProMaxEighteenScreen({Key? key}) : super(key: key);

  
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  void initiatePhoneCall(String phoneNumber) async {
  String url = 'tel:$phoneNumber';
  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Iphone14ProMaxNineteenPage(),
      Iphone14ProMaxEighteenScreen()
    ];

    double bottomBarWidth = 42;
    double bottomBarBorderWidth = 5;
    int _page = 0;

    void updatePage(int page) {
      if (page == 0) {
        // Navigate to the home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Iphone14ProMaxNineteenPage()),
        );
      } else if (page == 1) {
        // Navigate to the account page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Iphone14ProMaxEighteenScreen()),
        );
      }
    }

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildWidgetStack(context),
                          SizedBox(height: 15.v),
                          _buildComponentFifty(context),
                          SizedBox(height: 31.v),
                          _buildComponentFiftyOne(context),
                          SizedBox(height: 24.v),
                          _buildEmailEditText(context),
                          SizedBox(height: 31.v),
                          _buildPhoneCounterEditText(context),
                          SizedBox(height: 31.v),
                          _buildGstNumberButton(context),
                          SizedBox(height: 80.v),
                        //  _buildAddPlantButton(context),
                          SizedBox(height: 31.v),
                        ])))),
            // bottomNavigationBar: _buildBottomBar(context)
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _page,
              selectedItemColor: GlobalVariables.selectedNavBarColor,
              unselectedItemColor: GlobalVariables.selectedNavBarColor,
              iconSize: 28,
              onTap: updatePage,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    width: bottomBarWidth,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(
                          color: _page == 1
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderWidth),
                    )),
                    child: const Icon(Icons.home_outlined),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: bottomBarWidth,
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(
                          color: _page == 0
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderWidth),
                    )),
                    child: const Icon(Icons.person_outline_outlined),
                  ),
                  label: '',
                ),
              ],
            )));
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
        height: 349.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle48,
              height: 263.v,
              width: 430.h,
              alignment: Alignment.topCenter),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse9,
              height: 187.adaptSize,
              width: 187.adaptSize,
              radius: BorderRadius.circular(93.h),
              alignment: Alignment.bottomCenter)
        ]));
  }

  /// Section Widget
  Widget _buildComponentFifty(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 60.h, right: 23.h),
            child: Column(children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 79.v,
                      width: 272.h,
                      margin: EdgeInsets.only(right: 4.h),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(userProvider.user.username,
                                style: CustomTextStyles
                                    .displaySmallDMSerifTextGreen90007)),
                        // Icon(Icons.location_city_rounded),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(left: 7.h, top: 10.v),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 3.adaptSize,
                                        width: 3.adaptSize,
                                        margin: EdgeInsets.only(
                                            top: 48.v, bottom: 16.v),
                                     
                                        //  Icon(Icons.location_on_rounded,
                                        //     color: Colors.redAccent, size: 25),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 26.h, top: 42.5.v),
                                          child: Text(userProvider.user.address,
                                              style: CustomTextStyles
                                                  .headlineSmallDutch801XBdBTBluegray900)),
                                      Spacer(),
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 19.v),
                                          child: CustomIconButton(
                                              height: 50.adaptSize,
                                              width: 50.adaptSize,
                                              padding: EdgeInsets.all(10.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillDeepOrange,
                                              child: Icon(
                                                Icons.call,
                                                color: Color(0xFF0A6430),
                                              )))
                                    ])))
                      ]))),
              SizedBox(height: 7.v),
              SizedBox(
                  width: 346.h,
                  child: Text(
                      "Arranging plant & proving good quality \nand high value plants of medicinal use.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.titleLargeDMSerifTextBlack90020_1))
            ])));
  }

  /// Section Widget
  Widget _buildComponentFiftyOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 17.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 112.adaptSize,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "      "),
                        TextSpan(
                            text: "10+\n",
                            style: CustomTextStyles
                                .displaySmallDMSerifTextff09642f),
                        TextSpan(text: "   "),
                        TextSpan(
                            text: "Best selling",
                            style:
                                CustomTextStyles.titleLargeDMSerifTextff09642f)
                      ]),
                      textAlign: TextAlign.left)),
              Container(
                  width: 126.h,
                  margin: EdgeInsets.only(left: 12.h, bottom: 36.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "    "),
                        TextSpan(
                            text: " 300+\n",
                            style: CustomTextStyles
                                .displaySmallDMSerifTextff09642f),
                        TextSpan(
                            text: " Consumers",
                            style: CustomTextStyles
                                .headlineSmallDMSerifTextff09642f)
                      ]),
                      textAlign: TextAlign.left)),
              Container(
                  width: 104.h,
                  margin: EdgeInsets.only(left: 28.h, bottom: 36.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "      "),
                        TextSpan(
                            text: "500+\n",
                            style: CustomTextStyles
                                .displaySmallDMSerifTextff09642f),
                        TextSpan(
                            text: "Contacts",
                            style: CustomTextStyles
                                .headlineSmallDMSerifTextff09642f)
                      ]),
                      textAlign: TextAlign.left))
            ]));
  }

  /// Section Widget
  // Widget _buildEmailEditText(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.only(left: 17.h, right: 12.h),
  //       child: CustomTextFormField(
  //           controller: emailEditTextController,
  //           hintText: "Email:- amitpandya@gmail.com",
  //           hintStyle: CustomTextStyles.titleLargeDMSerifTextBlack900,
  //           textInputType: TextInputType.emailAddress,
  //           prefix: Container(
  //               margin: EdgeInsets.fromLTRB(14.h, 4.v, 15.h, 15.v),
  //               child: Padding(
  //                 padding: const EdgeInsets.only(top: 4.0),
  //                 child: Icon(Icons.email_rounded, size: 23),
  //               )),
  //           prefixConstraints: BoxConstraints(maxHeight: 43.v),
  //           contentPadding: EdgeInsets.only(top: 7.v, right: 30.h, bottom: 7.v),
  //           borderDecoration: TextFormFieldStyleHelper.fillGreen,
  //           fillColor: appTheme.green5002));
  // }
  Widget _buildEmailEditText(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
  return Padding(
    padding: EdgeInsets.only(left: 17.h, right: 12.h),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(14.h, 4.v, 15.h, 15.v),
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Icon(Icons.email_rounded, size: 23),
          ),
        ),
        SizedBox(width: 10.h), // Adjust the spacing as needed
        Expanded(
          child: Text(
            "Email:- ${userProvider.user.email}",
            style: CustomTextStyles.titleLargeDMSerifTextBlack900,
          ),
        ),
      ],
    ),
  );
}


  /// Section Widget
  // Widget _buildPhoneCounterEditText(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.only(left: 17.h, right: 12.h),
  //       child: CustomTextFormField(
  //           controller: phoneCounterEditTextController,
  //           hintText: "Phone:- 9876987645",
  //           hintStyle: CustomTextStyles.titleLargeDMSerifTextBlack900,
  //           textInputAction: TextInputAction.done,
  //           textInputType: TextInputType.phone,
  //           prefix: Container(
  //             margin: EdgeInsets.fromLTRB(15.h, 4.v, 14.h, 15.v),
  //             child: Icon(Icons.call, size: 23),
  //           ),
  //           prefixConstraints: BoxConstraints(maxHeight: 43.v),
  //           contentPadding: EdgeInsets.only(top: 7.v, right: 30.h, bottom: 7.v),
  //           borderDecoration: TextFormFieldStyleHelper.fillGreen,
  //           fillColor: appTheme.green5002));
  // }

  // Widget _buildGstNumberButton(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.only(left: 17.h, right: 12.h),
  //       child: CustomTextFormField(
  //           controller: gstEditTextController,
  //           hintText: "GST Number:- 22aaaaa0000a1z5",
  //           hintStyle: CustomTextStyles.titleLargeDMSerifTextBlack900,
  //           textInputAction: TextInputAction.done,
  //           textInputType: TextInputType.phone,
  //           prefix: Container(
  //             margin: EdgeInsets.fromLTRB(15.h, 4.v, 14.h, 15.v),
  //             child: Icon(Icons.currency_rupee_rounded, size: 23),
  //           ),
  //           prefixConstraints: BoxConstraints(maxHeight: 43.v),
  //           contentPadding: EdgeInsets.only(top: 7.v, right: 30.h, bottom: 7.v),
  //           borderDecoration: TextFormFieldStyleHelper.fillGreen,
  //           fillColor: appTheme.green5002));
  // }
  Widget _buildPhoneCounterEditText(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
  return Padding(
    padding: EdgeInsets.only(left: 17.h, right: 12.h),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15.h, 4.v, 14.h, 15.v),
          child:IconButton(onPressed: ()=>initiatePhoneCall('9876987645'),icon: Icon(Icons.call, size: 23),) ,
        ),
        SizedBox(width: 10.h), // Adjust the spacing as needed
        Expanded(
          child: Text(
            "Phone:- ${userProvider.user.number}",
            style: CustomTextStyles.titleLargeDMSerifTextBlack900,
          ),
        ),
      ],
    ),
  );
}
Widget _buildGstNumberButton(BuildContext context) {
  final userProvider = Provider.of<UserProvider>(context, listen: false);
  return Padding(
    padding: EdgeInsets.only(left: 17.h, right: 12.h),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15.h, 4.v, 14.h, 15.v),
          child: Icon(Icons.currency_rupee_rounded, size: 23),
        ),
        SizedBox(width: 10.h), // Adjust the spacing as needed
        Expanded(
          child: Text(
            "GST Number:-${userProvider.user.gst}",
            style: CustomTextStyles.titleLargeDMSerifTextBlack900,
          ),
        ),
      ],
    ),
  );
}


  /// Section Widget
  // Widget _buildGstNumberButton(BuildContext context) {
  //   return CustomElevatedButton(
  //       height: 50.v,
  //       text: "GST Number:- 22aaaaa0000a1z5",
  //       margin: EdgeInsets.only(left: 13.h, right: 16.h),
  //       leftIcon: Container(
  //           margin: EdgeInsets.only(right: 27.h),
  //           child: CustomImageView(
  //               imagePath: ImageConstant.imgRupeesign,
  //               height: 24.v,
  //               width: 25.h)),
  //       buttonStyle: CustomButtonStyles.fillGreenTL15,
  //       buttonTextStyle: CustomTextStyles.titleLargeInterGreen90004);
  // }

  /// Section Widget
  // Widget _buildAddPlantButton(BuildContext context) {
  //   return CustomElevatedButton(
  //       height: 49.v,
  //       text: "Add plant",
  //       margin: EdgeInsets.symmetric(horizontal: 56.h),
  //       rightIcon: Container(
  //           margin: EdgeInsets.only(left: 13.h),
  //           child: CustomImageView(
  //               imagePath: ImageConstant.imgPluscircle,
  //               height: 34.adaptSize,
  //               width: 34.adaptSize)),
  //       buttonStyle: CustomButtonStyles.fillBlueGrayTL15,
  //       buttonTextStyle: CustomTextStyles.headlineSmallWhiteA700,
  //       onPressed: () {
  //        // onTapAddPlantButton(context);
  //       });
  // }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the iphone14ProMaxFortynineScreen when the action is triggered.
  // onTapAddPlantButton(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortynineScreen);
  // }
}
