import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_page/iphone_14_pro_max_nineteen_page.dart';
import 'package:phytoscan/providers/userprovider.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Iphone14ProMaxEighteenScreen extends StatefulWidget {
 const Iphone14ProMaxEighteenScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxEighteenScreen> createState() =>
      _Iphone14ProMaxEighteenScreenState();
}

class _Iphone14ProMaxEighteenScreenState
    extends State<Iphone14ProMaxEighteenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String selectedImagePath = '';
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double bottomBarWidth = 42;
    double bottomBarBorderWidth = 5;
    int _page = 0;

    void updatePage(int page) {
      if (page == 0) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Iphone14ProMaxNineteenPage()),
        );
      } else if (page == 1) {
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
              child: Column(
                children: [
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
                ],
              ),
            ),
          ),
        ),
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
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
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
                      width: bottomBarBorderWidth,
                    ),
                  ),
                ),
                child: const Icon(Icons.person_outline_outlined),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
      height: 349.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle48,
            height: 263.v,
            width: 430.h,
            alignment: Alignment.topCenter,
          ),
          Container(
            height: 187.adaptSize,
            width: 187.adaptSize,
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                selectedImagePath.isNotEmpty
                    ? ClipOval(
                      child: Image.file(
                        File(
                            selectedImagePath), // Load selected image from file
                        height: 187.adaptSize,
                        width: 187.adaptSize,
                        fit: BoxFit.cover,
                      ),
                    )
                     : CustomImageView(
                      imagePath: ImageConstant.imgEllipse9187x187,
                      height: 187.adaptSize,
                      width: 187.adaptSize,
                      radius: BorderRadius.circular(93.h),
                      alignment: Alignment.bottomCenter,
                    ),
              Positioned(
                bottom: 0,
                //right: 120,
                left: 110,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFE0EFE2),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.camera_alt_rounded),
                    onPressed: () {
                      _pickImageFromGallery();
                    },
                  ),
                ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComponentFifty(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 60.h, right: 23.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 79.v,
                width: 272.h,
                margin: EdgeInsets.only(right: 4.h),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(userProvider.user.username,
                          style: TextStyle(
                              fontSize: 25, color: Color(0xFF0A6430))),
                    ),
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Text(
                    //     userProvider.user.address,
                    //     style:
                    //         TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
                    //   ),
                    // ),
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
                              margin: EdgeInsets.only(top: 48.v, bottom: 16.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 26.h, top: 42.5.v),
                              child: Text(
                                userProvider.user.address,
                                style: CustomTextStyles
                                    .headlineSmallDutch801XBdBTBluegray900,
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(bottom: 20, right: 20),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Color(0xFFE0EFE2)),
                              child: IconButton(
                                onPressed: () =>
                                    _makePhoneCall(userProvider.user.number),
                                icon:
                                    Icon(Icons.call, color: Color(0xFF0A6430)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7.v),
            SizedBox(
              width: 346.h,
              child: Text(
                "Arranging plant & proving good quality \nand high value plants of medicinal use.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeDMSerifTextBlack90020_1,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
              text: TextSpan(
                children: [
                  TextSpan(text: "      "),
                  TextSpan(
                      text: "10+\n",
                      style: CustomTextStyles.displaySmallDMSerifTextff09642f),
                  TextSpan(text: "   "),
                  TextSpan(
                      text: "Best selling",
                      style: CustomTextStyles.titleLargeDMSerifTextff09642f),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 12.h, bottom: 36.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "    "),
                  TextSpan(
                      text: " 300+\n",
                      style: CustomTextStyles.displaySmallDMSerifTextff09642f),
                  TextSpan(
                      text: " Consumers",
                      style: CustomTextStyles.headlineSmallDMSerifTextff09642f),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: 104.h,
            margin: EdgeInsets.only(left: 28.h, bottom: 36.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "      "),
                  TextSpan(
                      text: "500+\n",
                      style: CustomTextStyles.displaySmallDMSerifTextff09642f),
                  TextSpan(
                      text: "Contacts",
                      style: CustomTextStyles.headlineSmallDMSerifTextff09642f),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

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
          SizedBox(width: 10.h),
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

  Widget _buildPhoneCounterEditText(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Padding(
      padding: EdgeInsets.only(left: 17.h, right: 12.h),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.h, 4.v, 14.h, 15.v),
            child: IconButton(
              onPressed: () => _makePhoneCall(userProvider.user.number),
              icon: Icon(Icons.call, size: 23),
            ),
          ),
          SizedBox(width: 10.h),
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
          SizedBox(width: 10.h),
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

  void _makePhoneCall(String phoneNumber) async {
    if (await canLaunch('tel:$phoneNumber')) {
      await launch('tel:$phoneNumber');
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }
}
