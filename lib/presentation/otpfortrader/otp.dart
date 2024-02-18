import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/presentation/authservice.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_pin_code_text_field.dart';

class OTP extends StatefulWidget {
     static const String routeName = '/otp';
  const OTP({Key? key}) : super(key: key);
  
  @override
  State<OTP> createState() => _OTP();
}

class _OTP extends State<OTP> {
final AuthService authService = AuthService();
// ignore: prefer_typing_uninitialized_variables
var  OTP;


 bool otp()   {
    authService.otp(
    context: context,
    otp: OTP,
    callback: (bool success) {
      if (success) {
        // OTP verification successful, proceed with the next steps
        
        onTapVerifyOTP(context);
      } else {
        // OTP verification failed, handle accordingly (show an error message, etc.)
        // Note: You may have already shown the error message in the otp function
        print("does not match");
      }
    },
  
    );

    return true ;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 40.v),
                child: Column(children: [
                  Text("Enter Verification code",
                      style: CustomTextStyles.displaySmallGreen90003),
                  SizedBox(height: 14.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle43,
                      height: 242.v,
                      width: 236.h,
                      radius: BorderRadius.circular(25.h)),
                  SizedBox(height: 21.v),
                  Text("Enter OTP",
                      style:
                          CustomTextStyles.headlineMediumDMSerifTextGreen90003),
                  SizedBox(height: 10.v),
                  SizedBox(
                      width: 249.h,
                      child: Text(
                          "Enter 4 digit OTP sent to(johnmehra45@gmail.com)",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeBlack900)),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 24.h),
                      child: CustomPinCodeTextField(
                          context: context, onChanged: (value) {
                            print(value);
                            OTP =value;
                          }
                          )),
                 const Spacer(flex: 40),
                  CustomElevatedButton(
                      height: 53.v,
                      text: "Verify  OTP",
                      margin: EdgeInsets.only(left: 15.h, right: 4.h),
                      buttonStyle: CustomButtonStyles.fillBlueGrayTL25,
                      buttonTextStyle: CustomTextStyles.headlineSmallWhiteA700,
                      onPressed: () {
                       
                        otp();
                      }),
                  const Spacer(flex: 59)
                ]))));
  }

  /// Navigates to the iphone14ProMaxNineteenContainerScreen when the action is triggered.
  onTapVerifyOTP(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.iphone14ProMaxFourScreen);
  }
}
