

import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortysix_screen/iphone_14_pro_max_fortysix_screen.dart';
import 'package:phytoscan/routes/app_routes.dart';
import 'package:phytoscan/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:phytoscan/widgets/app_bar/custom_app_bar.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_text_form_field.dart';
import 'package:phytoscan/presentation/authservice.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxFortyeightScreen extends StatefulWidget {
  const Iphone14ProMaxFortyeightScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxFortyeightScreen> createState() => _Iphone14ProMaxFortyeightScreenState();
}

class _Iphone14ProMaxFortyeightScreenState extends State<Iphone14ProMaxFortyeightScreen> {
  TextEditingController registerController = TextEditingController();

final AuthService authService = AuthService();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _signUpFormKey = GlobalKey<FormState>();

    void signUpUser() {
    authService.signUpUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
      username: registerController.text,
      confirmpas: confirmPasswordController.text,
      number: phoneController.text,
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor:const Color(0xFFE0EFE2),
            resizeToAvoidBottomInset: false,
            //  appBar: _buildAppBar(context),
            body: Form(
                key: _signUpFormKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 104.v,
                                      width: 278.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Text("Register",
                                                    style: theme.textTheme
                                                        .displayLarge)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                    "Create your new account",
                                                    style: CustomTextStyles
                                                        .headlineSmallBlack900_1))
                                          ]))),
                              SizedBox(height: 22.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse22,
                                  height: 120.adaptSize,
                                  width: 120.adaptSize,
                                  radius: BorderRadius.circular(60.h),
                                  alignment: Alignment.center),
                              SizedBox(height: 84.v),
                              _buildRegister(context),
                              SizedBox(height: 37.v),
                              _buildEmail(context),
                              SizedBox(height: 37.v),
                              _buildPhone(context),
                              SizedBox(height: 45.v),
                              _buildPassword(context),
                              SizedBox(height: 45.v),
                              _buildConfirmPassword(context),
                              SizedBox(height: 60.v),
                              _buildSendOTP(context),
                              SizedBox(height: 20.v),
                            ]))))));
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar(BuildContext context) {
  //   return CustomAppBar(
  //       height: 60.v,
  //       leadingWidth: double.maxFinite,
  //       leading: AppbarLeadingIconbutton(
  //           // imagePath: ImageConstant.imgArrowLeftWhiteA700

  //           margin: EdgeInsets.fromLTRB(39.h, 11.v, 358.h, 11.v),
  //           onTap: () {
  //             onTapArrowLeft(context);
  //           }));
  // }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 18.h),
        child: CustomTextFormField(
            controller: registerController,
            hintText: "Full Name",
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 18.v, 25.h, 18.v),
              // child: CustomImageView(
              //     imagePath: ImageConstant.imgLock,
              //     height: 24.v,
              //     width: 18.h)),
              child: const Icon(
                Icons.account_circle_rounded,
                size: 25.0,
              ),
            ),
            validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Full Name cannot be empty';
        }
        return null;
      },
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 18.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(9.h, 15.v, 26.h, 17.v),
              child: const Icon(
                Icons.email,
                size: 25.0,
              ),
            ),
             validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email cannot be empty';
        }
        else if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
          return 'Enter a valid email address';
        }
        return null;
      },
            prefixConstraints: BoxConstraints(maxHeight: 62.v))
            );
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 18.h),
        child: CustomTextFormField(
            controller: phoneController,
            hintText: "Phone",
            textInputType: TextInputType.phone,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(9.h, 19.v, 23.h, 13.v),
              child:const Icon(
                Icons.phone,
                size: 25.0,
              ),
            ),
              validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Phone cannot be empty';
        } else if (value.length != 10) {
          return 'Phone number must be 10 digits';
        }
        return null;
      },
            prefixConstraints: BoxConstraints(maxHeight: 62.v)));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 18.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Password",
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 15.v, 14.h, 17.v),
              child: const Icon(
                Icons.lock,
                size: 25.0,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 62.v),
              validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password cannot be empty';
        } else if (value.length < 6) {
          return 'Password must be at least 6 characters long';
        }
        return null;
      },
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 23.h),
        child: CustomTextFormField(
            controller: confirmPasswordController,
            hintText: "ConfirmPassword",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 15.v, 8.h, 17.v),
              child:const Icon(
                Icons.lock,
                size: 25.0,
              ),
            ),
            obscureText: true,
            prefixConstraints: BoxConstraints(maxHeight: 62.v),
             validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Confirm Password cannot be empty';
        } else if (value.length < 6) {
          return 'Confirm Password must be at least 6 characters long';
        } else if (value != passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
            
       ));
  }

  /// Section Widget
  Widget _buildSendOTP(BuildContext context) {
    return CustomElevatedButton(
        height: 53.v,
        text: "Send OTP",
        margin: EdgeInsets.only(left: 31.h, right: 18.h),
        buttonStyle: CustomButtonStyles.fillBlueGrayTL25,
        buttonTextStyle: CustomTextStyles.headlineSmallWhiteA700,
       onPressed: () {
                            if (_signUpFormKey.currentState!.validate()) {
                              signUpUser();
                              onTapSendOTP(context);
                            }
                          },
        alignment: Alignment.center);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone14ProMaxFortysixScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
   // Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortysixScreen);
    Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Iphone14ProMaxFortysixScreen( emailController.text.toString()),
    ),
  );
  }
}
