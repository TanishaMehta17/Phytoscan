import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/widgets/custom_elevated_button.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';
import 'package:phytoscan/widgets/custom_outlined_button.dart';
import 'package:phytoscan/widgets/custom_text_form_field.dart';

class Iphone14ProMaxFortythreeScreen extends StatelessWidget {
  Iphone14ProMaxFortythreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController amountController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 35.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDownloadOne(context),
                    SizedBox(height: 55.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 108.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildAmount(context),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 11.h,
                              top: 6.v,
                              bottom: 8.v,
                            ),
                            child: CustomIconButton(
                              height: 31.v,
                              width: 28.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgDownload12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "Card Details",
                        style: CustomTextStyles.headlineSmallErrorContainer,
                      ),
                    ),
                    SizedBox(height: 34.v),
                    _buildCardNumber(context),
                    SizedBox(height: 44.v),
                    _buildEightyTwo(context),
                    SizedBox(height: 44.v),
                    _buildFirstName(context),
                    SizedBox(height: 73.v),
                    _buildPayment(context),
                    SizedBox(height: 62.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 361.h,
                        margin: EdgeInsets.only(
                          left: 21.h,
                          right: 18.h,
                        ),
                        child: Text(
                          "Enter Your Card number,  name ,Expiry Date of the card, and the CVV number (the three  digit number on the back of your card).",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .bodyLargeDMSerifDisplayBluegray10002,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDownloadOne(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgDownload1,
              height: 62.v,
              width: 78.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 9.v,
              ),
              child: Text(
                "Credit Card",
                style:
                    CustomTextStyles.headlineLargeDMSerifDisplayErrorContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
        controller: amountController,
        hintText: "Amount To Be Amount",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 8.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: CustomTextFormField(
        controller: cardNumberController,
        hintText: "CARD NUMBER",
        textInputType: TextInputType.number,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 8.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMm(BuildContext context) {
    return CustomOutlinedButton(
      width: 86.h,
      text: "MM",
    );
  }

  /// Section Widget
  Widget _buildYy(BuildContext context) {
    return CustomOutlinedButton(
      width: 86.h,
      text: "YY",
      margin: EdgeInsets.only(left: 22.h),
    );
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.h),
      child: CustomTextFormField(
        width: 108.h,
        controller: cvvController,
        hintText: "CVV",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 30.h,
          vertical: 8.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        children: [
          _buildMm(context),
          _buildYy(context),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 30.v,
            width: 35.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 5.v,
            ),
          ),
          _buildCvv(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: CustomTextFormField(
        controller: firstNameController,
        hintText: "Surname First Name",
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 8.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPayment(BuildContext context) {
    return CustomElevatedButton(
      height: 43.v,
      text: "PAYMENT",
      margin: EdgeInsets.only(
        left: 49.h,
        right: 35.h,
      ),
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleLargeOnErrorContainer,
      alignment: Alignment.center,
    );
  }
}
