import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:phytoscan/theme/theme_helper.dart';
import 'package:provider/provider.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxFortyfivePage extends StatefulWidget {
  const Iphone14ProMaxFortyfivePage({Key? key})
      : super(
          key: key,
        );
@override
  void initState() {
   
   
  }
 

  @override
  State<Iphone14ProMaxFortyfivePage> createState() =>
      _Iphone14ProMaxFortyfivePageState();
}

class _Iphone14ProMaxFortyfivePageState
    extends State<Iphone14ProMaxFortyfivePage> {
 
  TextEditingController desc = TextEditingController();
  TextEditingController loc = TextEditingController();
  String selectedImagePath = ''; // Added to store selected image path
 final ImagePicker _picker = ImagePicker();
  Future<void> _pickImageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImagePath =
            pickedFile.path; // Store selected image path and update UI
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildNineteenStack(context), // Pass selectedImagePath
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 35.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 79.v,
                            width: 196.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    userProvider.user.username,
                                    style:
                                        CustomTextStyles.displaySmallGreen90003,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 7.h,
                              right: 57,
                              top: 14.v,
                              bottom: 15.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 337.h,
                    margin: EdgeInsets.only(
                      left: 57.h,
                      right: 35.h,
                    ),
                    child: TextFormField(
                      controller: desc,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Enter description",
                      ),
                      maxLines: 1,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildSeventeenRow(context),
                  SizedBox(height: 12.v),
                  Divider(
                    color: appTheme.green900,
                    indent: 19.h,
                    endIndent: 18.h,
                  ),
                  SizedBox(height: 27.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_shopping_cart, color: Color(0xFF0A6430)),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "Buy from your wishlist",
                          style: const TextStyle(
                              fontSize: 20, color: Color(0xFF0A6430)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21.v),
                  _buildContainer("Amla", 'assets/images/img_rectangle_17.png',
                      "Phytonutrients and \nantioxidant"),
                  SizedBox(height: 21.v),
                  _buildContainer(
                      "Turmeric",
                      'assets/images/img_rectangle_16.png',
                      "Digestive healing\n agent"),
                  SizedBox(height: 21.v),
                  _buildContainer(
                      "Cardamom",
                      'assets/images/img_rectangle_15.png',
                      "Strong taste, resinous\n fragrance"),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNineteenStack(BuildContext context) {
    return SizedBox(
      height: 349.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle48,
            height: 283.v,
            width: 430.h,
            alignment: Alignment.topCenter,
          ),
          Stack(
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
          )
        ],
      ),
    );
  }

  Widget _buildSeventeenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 9.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 103.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 17.v,
            ),
            child: Column(children: [
              Text(
                "2",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "Purchase",
                style: const TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: SizedBox(
              height: 98.v,
              child: VerticalDivider(
                width: 4.h,
                thickness: 4.v,
              ),
            ),
          ),
          Spacer(),
          Container(
            width: 91.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 17.v,
            ),
            child: Column(children: [
              Text(
                "3",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "Wishlist",
                style: const TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: SizedBox(
              height: 98.v,
              child: VerticalDivider(
                width: 4.h,
                thickness: 4.v,
              ),
            ),
          ),
          Container(
            width: 111.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 4.v,
              bottom: 11.v,
            ),
            child: Column(children: [
              Text(
                "1",
                style: theme.textTheme.displaySmall,
              ),
              Text(
                "Challenge",
                style: const TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(String title, String imagePath, String textContent) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE0EFE2),
        borderRadius: BorderRadius.circular(28.0),
      ),
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 150.0,
              width: 120.0,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    style: TextStyle(fontSize: 25, color: Color(0xFF0F3E12)),
                  ),
                  Text(
                    textContent,
                    style: TextStyle(
                        fontSize: 15, color: Colors.black12.withOpacity(0.35)),
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: Color(0xFF5EDB7D),
                        radius: 15,
                        child: Icon(
                          Icons.wb_sunny_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Color(0xFF5EDB7D),
                        radius: 15,
                        child: Icon(
                          Icons.water_drop_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Color(0xFF5EDB7D),
                        radius: 15,
                        child: Icon(
                          Icons.thermostat_auto_outlined,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor: Color(0xFF5EDB7D),
                        radius: 15,
                        child: Icon(
                          Icons.collections_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
