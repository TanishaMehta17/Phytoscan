import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/presentation/authservice.dart';
import 'package:phytoscan/routes/app_routes.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxFortysevenScreen extends StatefulWidget {
  Iphone14ProMaxFortysevenScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxFortysevenScreen> createState() => _Iphone14ProMaxFortysevenScreenState();
}

class _Iphone14ProMaxFortysevenScreenState extends State<Iphone14ProMaxFortysevenScreen> {
  TextEditingController registerController = TextEditingController();

final AuthService authService = AuthService();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

   final _signUpFormKey = GlobalKey<FormState>();

      void TradersignUpUser() {
    authService.TradersignUpUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
      username: registerController.text,
      gst: priceController.text,
      confirmpas: confirmPasswordController.text,
      number: phoneController.text,
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFFE0EFE2),
            resizeToAvoidBottomInset: false,
            //  appBar: _buildAppBar(context),
            body: Form(
                key:_signUpFormKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 29.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 104.v,
                                  width: 278.h,
                                  margin: EdgeInsets.only(left: 41.h),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Text("Register",
                                                style: theme
                                                    .textTheme.displayLarge)),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                                "Create your new account",
                                                style: CustomTextStyles
                                                    .headlineSmallBlack900_1))
                                      ]))),
                          SizedBox(height: 22.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse25,
                              height: 120.adaptSize,
                              width: 120.adaptSize,
                              radius: BorderRadius.circular(60.h)),
                          SizedBox(height: 51.v),
                          _buildRegister(context),
                          SizedBox(height: 39.v),
                          _buildEmail(context),
                          SizedBox(height: 39.v),
                          _buildPhone(context),
                          SizedBox(height: 39.v),
                          _buildPrice(context),
                          SizedBox(height: 51.v),
                          _buildPassword(context),
                          SizedBox(height: 39.v),
                          _buildConfirmPassword(context),
                          SizedBox(height: 50.v),
                          _buildSendOTP(context),
                          SizedBox(height: 20.v),
                        ]))))));
  }

  /// Section Widget

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomTextFormField(
        controller: registerController,
        hintText: "Full Name",
        prefix: Container(
          margin: EdgeInsets.fromLTRB(21.h, 18.v, 25.h, 18.v),
          child: Icon(Icons.account_circle_rounded),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 62.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(9.h, 15.v, 26.h, 17.v),
          child: Icon(Icons.email_rounded),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 62.v));
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
        controller: phoneController,
        hintText: "Phone",
        textInputType: TextInputType.phone,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(9.h, 19.v, 23.h, 13.v),
          child: Icon(Icons.phone),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 62.v));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
        controller: priceController,
        hintText: "GST Number",
        textInputType: TextInputType.number,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(21.h, 7.v, 30.h, 25.v),
          child: Icon(Icons.currency_rupee_rounded),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 62.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(21.h, 15.v, 14.h, 17.v),
          child: Icon(Icons.lock),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 62.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordController,
        hintText: "ConfirmPassword",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(21.h, 15.v, 8.h, 17.v),
          child: Icon(Icons.lock),
        ),
        prefixConstraints: BoxConstraints(maxHeight: 62.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSendOTP(BuildContext context) {
    return CustomElevatedButton(
        height: 53.v,
        text: "Send OTP",
        margin: EdgeInsets.only(left: 14.h, right: 13.h),
        buttonStyle: CustomButtonStyles.fillBlueGrayTL25,
        buttonTextStyle: CustomTextStyles.headlineSmallWhiteA700,
        onPressed: () {
            if (_signUpFormKey.currentState!.validate()) {
                              TradersignUpUser();
                             onTapSendOTP(context);
                            }
          
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone14ProMaxFortysixScreen when the action is triggered.
  onTapSendOTP(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otp);
  }
}
