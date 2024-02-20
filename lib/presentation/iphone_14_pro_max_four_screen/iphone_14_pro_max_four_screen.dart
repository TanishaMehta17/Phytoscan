import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/presentation/authservice.dart';
import 'package:phytoscan/routes/app_routes.dart';
import 'package:phytoscan/widgets/app_bar/appbar_leading_image.dart';
import 'package:phytoscan/widgets/app_bar/custom_app_bar.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_text_form_field.dart';

class Iphone14ProMaxFourScreen extends StatefulWidget {
  Iphone14ProMaxFourScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxFourScreen> createState() =>
      _Iphone14ProMaxFourScreenState();
}

class _Iphone14ProMaxFourScreenState extends State<Iphone14ProMaxFourScreen> {
  TextEditingController EmailController = TextEditingController();
  final AuthService authService = AuthService();
  TextEditingController passwordController = TextEditingController();

  bool fullNameColumn = false;

  bool isChecked = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void check() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  bool TradersignUser() {
    authService.TradersignInUser(
      context: context,
      email: EmailController.text,
      password: passwordController.text,
      callback: (bool success) {
        if (success) {
          onTapLogin(context);
          print("login Succesfull");
        } else {
          print("Password is Incorrect");
        }
      },
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE0EFE2),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: SizedBox(
                  width: 433.h,
                  child: Column(
                    children: [
                      _buildTenStack(context),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 29.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse25,
                              height: 120.adaptSize,
                              width: 120.adaptSize,
                              radius: BorderRadius.circular(60.h),
                            ),
                            SizedBox(height: 67.v),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomTextFormField(
                                controller: EmailController,
                                hintText: "Email",
                                prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      12.h, 13.v, 26.h, 13.v),
                                  child: const Icon(
                                    Icons.account_circle_rounded,
                                    size: 25.0,
                                  ),
                                ),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 56.v),
                                     validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email cannot be empty';
        }
        else if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
          return 'Enter a valid email address';
        }
        return null;
      },
                                contentPadding: EdgeInsets.only(
                                    top: 12.v, right: 30.h, bottom: 12.v),
                              ),
                            ),
                            SizedBox(height: 32.v),
                            Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: CustomTextFormField(
                                controller: passwordController,
                                hintText: "Password",
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      11.h, 16.v, 24.h, 15.v),
                                  child: const Icon(
                                    Icons.lock,
                                    size: 25.0,
                                  ),
                                ),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 61.v),
                                      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password cannot be empty';
        } else if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
                                obscureText: true,
                              ),
                            ),
                            SizedBox(height: 36.v),
                            _buildFullNameColumn(context),
                            SizedBox(height: 43.v),
                            CustomElevatedButton(
                              height: 53.v,
                              text: "Login",
                              margin: EdgeInsets.symmetric(horizontal: 14.h),
                              buttonStyle: CustomButtonStyles.fillBlueGrayTL25,
                              buttonTextStyle:
                                  CustomTextStyles.headlineSmallWhiteA700,
                              // onPressed: () {
                              //   TradersignUser();
                              // },
                                onPressed:
                                () {
                                  //onTapTxtRegister(context);
                                  if (_formKey.currentState!.validate()) {
                                    TradersignUser();
                                  
                                  }
                                }
                              
                            ),
                            SizedBox(height: 10.v),
                            // GestureDetector(
                            //   onTap: () {
                            //     onTapTxtRegister(context);
                            //   },
                            //   child: Text(
                            //     "Register",
                            //     style:
                            //         CustomTextStyles.titleLargeInterBluegray900,
                            //   ),
                            // ),
                         Padding(
                           padding: const EdgeInsets.only(left:68.0),
                           child: Row(
                             children: [
                               Text("Don't have an account? ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                               TextButton(
                                 onPressed: () {
                                   // Add your button tap logic here
                                   onTapTxtRegister(context);
                                 },
                                 child: Text(
                                   "Register",
                                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF426D52)),
                                 ),
                               ),
                             ],
                           ),
                         ),


                            // CustomElevatedButton(
                            //   height: 53.v,
                            //   text: "Register",
                            //   margin: EdgeInsets.symmetric(horizontal: 14.h),
                            //   buttonStyle: CustomButtonStyles.fillBlueGrayTL25,
                            //   buttonTextStyle:
                            //       CustomTextStyles.headlineSmallWhiteA700,
                           
                            //     onPressed:
                            //     () {
                            //       //onTapTxtRegister(context);
                                 
                            //         onTapTxtRegister(context);
                            //       }
                                
                              
                            // ),
                            SizedBox(height: 17.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTenStack(BuildContext context) {
    return SizedBox(
      height: 316.v,
      width: 433.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2,
            height: 316.v,
            width: 433.h,
            alignment: Alignment.center,
          ),
          CustomAppBar(
            height: 47.v,
            leadingWidth: 432.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIcon, // Change to the desired icon
              margin: EdgeInsets.fromLTRB(36.h, 3.v, 383.h, 3.v),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullNameColumn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          "Remember Me?",
          style: TextStyle(color: Color(0xFF426D52), fontSize: 17.0),
        ),
        const SizedBox(width: 10.0),
        GestureDetector(
          onTap: check,
          child: Container(
            width: 17.0,
            height: 17.0,
            decoration: BoxDecoration(
              color: isChecked ? Colors.green : Colors.transparent,
              border: Border.all(color: Colors.blueGrey.withOpacity(0.25)),
            ),
            child: isChecked
                ? const Icon(
                    Icons.check,
                    size: 15.0,
                    color: Colors.white,
                  )
                : null,
          ),
        )
      ],
    );
  }

  void onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxNineteenPage);
  }

  void onTapTxtRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortysevenScreen);
  }
}
