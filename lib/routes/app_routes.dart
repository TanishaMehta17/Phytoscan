// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:phytoscan/address/screen/address_screens.dart';
import 'package:phytoscan/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_one_screen/iphone_14_pro_max_one_screen.dart';
import 'package:phytoscan/presentation/frame_eight_screen/frame_eight_screen.dart';
import 'package:phytoscan/presentation/otpfortrader/otp.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyeight_screen/iphone_14_pro_max_fortyeight_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyseven_screen/iphone_14_pro_max_fortyseven_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_three_screen/iphone_14_pro_max_three_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_four_screen/iphone_14_pro_max_four_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortysix_screen/iphone_14_pro_max_fortysix_screen.dart';

//import 'package:phytoscan/presentation/iphone_14_pro_max_fortynine_screen/iphone_14_pro_max_fortynine_screen.dart';
//import 'package:phytoscan/presentation/iphone_14_pro_max_seventeen_screen/iphone_14_pro_max_seventeen_screen.dart';

import 'package:phytoscan/presentation/iphone_14_pro_max_fortytwo_screen/iphone_14_pro_max_fortytwo_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_twentysix_screen/iphone_14_pro_max_twentysix_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_twentyseven_screen/iphone_14_pro_max_twentyseven_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtytwo_screen/iphone_14_pro_max_thirtytwo_screen.dart';

import 'package:phytoscan/presentation/iphone_14_pro_max_twelve_screen/iphone_14_pro_max_twelve_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_twentyfive_screen/iphone_14_pro_max_twentyfive_screen.dart';

import 'package:phytoscan/presentation/iphone_14_pro_max_fortythree_screen/iphone_14_pro_max_fortythree_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtythree_screen/iphone_14_pro_max_thirtythree_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirty_screen/iphone_14_pro_max_thirty_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtyfour_screen/iphone_14_pro_max_thirtyfour_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtyfive_screen/iphone_14_pro_max_thirtyfive_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtysix_screen/iphone_14_pro_max_thirtysix_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtyseven_screen/iphone_14_pro_max_thirtyseven_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtyeight_screen/iphone_14_pro_max_thirtyeight_screen.dart';

import 'package:phytoscan/presentation/iphone_14_pro_max_thirtyone_screen/iphone_14_pro_max_thirtyone_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirtynine_screen/iphone_14_pro_max_thirtynine_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_forty_screen/iphone_14_pro_max_forty_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyone_screen/iphone_14_pro_max_fortyone_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_eighteen_screen/iphone_14_pro_max_eighteen_screen.dart';
//import 'package:phytoscan/presentation/iphone_14_pro_max_twenty_screen/iphone_14_pro_max_twenty_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_container_screen/iphone_14_pro_max_nineteen_container_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_page/iphone_14_pro_max_nineteen_page.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirteen_screen/iphone_14_pro_max_thirteen_screen.dart';
//import 'package:phytoscan/presentation/iphone_14_pro_max_fortyfour_screen/iphone_14_pro_max_fortyfour_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyfive_screen/iphone_14_pro_max_fortyfive_screen.dart';

import 'package:phytoscan/trader/screen/add_product_screen.dart';
//import 'package:phytoscan/address/screens/address_screen.dart';
import 'package:phytoscan/cart/cart_screen.dart';
import 'package:phytoscan/models/product.dart';

class AppRoutes {
  static const String iphone14ProMaxOneScreen = '/iphone_14_pro_max_one_screen';
  static const String iphone14ProMaxNineteenPage =
      '/iphone_14_pro_max_nineteen_page';
  static const String iphone14ProMaxFortynineScreen =
      '/iphone_14_pro_max_fortynine_screen';
  static const String iphone14ProMaxFortyeightScreen =
      '/iphone_14_pro_max_fortyeight_screen.dart';
  static const String iphone14ProMaxFortysevenScreen =
      '/iphone_14_pro_max_fortyseven_screen.dart';
  static const String iphone14ProMaxFortysixScreen =
      '/iphone_14_pro_max_fortysix_screen.dart';
  static const String iphone14ProMaxFourScreen =
      '/iphone_14_pro_max_four_screen';
  static const String frameEightScreen = '/frame_eight_screen.dart';
  static const String iphone14ProMaxThreeScreen =
      '/iphone_14_pro_max_three_screen.dart';

  static const String otp = '/otp.dart';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String iphone14ProMaxSeventeenScreen =
      '/iphone_14_pro_max_seventeen_screen';

  static const String iphone14ProMaxFortytwoScreen =
      '/iphone_14_pro_max_fortytwo_screen';

  static const String iphone14ProMaxTwentysixScreen =
      '/iphone_14_pro_max_twentysix_screen';

  static const String iphone14ProMaxTwentysevenScreen =
      '/iphone_14_pro_max_twentyseven_screen';

  static const String iphone14ProMaxThirtytwoScreen =
      '/iphone_14_pro_max_thirtytwo_screen';

  static const String iphone14ProMaxTwelveScreen =
      '/iphone_14_pro_max_twelve_screen';

  static const String iphone14ProMaxTwentyfiveScreen =
      '/iphone_14_pro_max_twentyfive_screen';

  static const String iphone14ProMaxFortythreeScreen =
      '/iphone_14_pro_max_fortythree_screen';

  static const String iphone14ProMaxThirtythreeScreen =
      '/iphone_14_pro_max_thirtythree_screen';

  static const String iphone14ProMaxThirtyScreen =
      '/iphone_14_pro_max_thirty_screen';

  static const String iphone14ProMaxThirtyfourScreen =
      '/iphone_14_pro_max_thirtyfour_screen';

  static const String iphone14ProMaxThirtyfiveScreen =
      '/iphone_14_pro_max_thirtyfive_screen';

  static const String iphone14ProMaxThirtysixScreen =
      '/iphone_14_pro_max_thirtysix_screen';

  static const String iphone14ProMaxThirtysevenScreen =
      '/iphone_14_pro_max_thirtyseven_screen';

  static const String iphone14ProMaxThirtyeightScreen =
      '/iphone_14_pro_max_thirtyeight_screen';

  static const String iphone14ProMaxThirtyoneScreen =
      '/iphone_14_pro_max_thirtyone_screen';

  static const String iphone14ProMaxThirtynineScreen =
      '/iphone_14_pro_max_thirtynine_screen';

  static const String iphone14ProMaxFortyScreen =
      '/iphone_14_pro_max_forty_screen';

  static const String iphone14ProMaxFortyoneScreen =
      '/iphone_14_pro_max_fortyone_screen';

  static const String iphone14ProMaxEighteenScreen =
      '/iphone_14_pro_max_eighteen_screen';

  static const String iphone14ProMaxTwentyScreen =
      '/iphone_14_pro_max_twenty_screen';

  static const String iphone14ProMaxNineteenContainerScreen =
      '/iphone_14_pro_max_nineteen_container_screen';

  static const String iphone14ProMaxFortyfivePage =
      '/iphone_14_pro_max_fortyfive_page';

  static const String iphone14ProMaxSixteenPage =
      '/iphone_14_pro_max_sixteen_page';

  static const String iphone14ProMaxFourteenPage =
      '/iphone_14_pro_max_fourteen_page';

  static const String iphone14ProMaxThirteenScreen =
      '/iphone_14_pro_max_thirteen_screen';

  static const String iphone14ProMaxFortyfourScreen =
      '/iphone_14_pro_max_fortyfour_screen';

  static const addProductScreen = '/add-product';
  //static const addProductScreen = '/add-product';
  static const cartScreen = '/cart-screen';
  static const addressScreen = '/address';
  //static const userlist ='/userlist';

  static Map<String, WidgetBuilder> routes = {
    // iphone14ProMaxFortynineScreen: (context) => Iphone14ProMaxFortynineScreen(),
    // iphone14ProMaxSeventeenScreen: (context) => Iphone14ProMaxSeventeenScreen(),

    addressScreen: (context) {
      final String totalAmount =
          ModalRoute.of(context)?.settings.arguments as String;
      return AddressScreen(totalAmount: totalAmount);
    },
    iphone14ProMaxFortytwoScreen: (context) =>
        const Iphone14ProMaxFortytwoScreen(),
    iphone14ProMaxTwentysixScreen: (context) =>
        const Iphone14ProMaxTwentysixScreen(),
    iphone14ProMaxTwentysevenScreen: (context) =>
        const Iphone14ProMaxTwentysevenScreen(),
    iphone14ProMaxThirtytwoScreen: (context) =>
        const Iphone14ProMaxThirtytwoScreen(),

    iphone14ProMaxTwelveScreen: (context) => const Iphone14ProMaxTwelveScreen(),
    iphone14ProMaxTwentyfiveScreen: (context) =>
        const Iphone14ProMaxTwentyfiveScreen(),

    iphone14ProMaxNineteenPage: (context) => const Iphone14ProMaxNineteenPage(),
    iphone14ProMaxFortythreeScreen: (context) =>
        Iphone14ProMaxFortythreeScreen(),
    iphone14ProMaxThirtythreeScreen: (context) =>
        const Iphone14ProMaxThirtythreeScreen(),
    iphone14ProMaxThirtyScreen: (context) => const Iphone14ProMaxThirtyScreen(),
    iphone14ProMaxThirtyfourScreen: (context) =>
        const Iphone14ProMaxThirtyfourScreen(),
    iphone14ProMaxThirtyfiveScreen: (context) =>
        const Iphone14ProMaxThirtyfiveScreen(),
    iphone14ProMaxThirtysixScreen: (context) =>
        const Iphone14ProMaxThirtysixScreen(),
    iphone14ProMaxThirtysevenScreen: (context) =>
        const Iphone14ProMaxThirtysevenScreen(),
    iphone14ProMaxThirtyeightScreen: (context) =>
        const Iphone14ProMaxThirtyeightScreen(),

    addProductScreen: (context) => const AddProductScreen(),
    cartScreen: (context) => const CartScreen(),

    iphone14ProMaxThirtynineScreen: (context) =>
        const Iphone14ProMaxThirtynineScreen(),
    iphone14ProMaxFortyScreen: (context) => const Iphone14ProMaxFortyScreen(),
    iphone14ProMaxFortyoneScreen: (context) =>
        const Iphone14ProMaxFortyoneScreen(),
    iphone14ProMaxEighteenScreen: (context) => Iphone14ProMaxEighteenScreen(),
    //iphone14ProMaxTwentyScreen: (context) => Iphone14ProMaxTwentyScreen(),
    iphone14ProMaxNineteenContainerScreen: (context) =>
        Iphone14ProMaxNineteenContainerScreen(),
    iphone14ProMaxThirtyoneScreen: (context) =>
        const Iphone14ProMaxThirtyoneScreen(),
    iphone14ProMaxThirteenScreen: (context) =>
        const Iphone14ProMaxThirteenScreen(),
    //iphone14ProMaxFortyfourScreen: (context) => const Iphone14ProMaxFortyfourScreen(),
    iphone14ProMaxFortyfivePage: (context) =>
        const Iphone14ProMaxFortyfivePage(),

    //  addProductScreen: (context) => const AddProductScreen(),
    iphone14ProMaxOneScreen: (context) => const Iphone14ProMaxOneScreen(),
    iphone14ProMaxThreeScreen: (context) => Iphone14ProMaxThreeScreen(),
    frameEightScreen: (context) => const FrameEightScreen(),
    iphone14ProMaxFourScreen: (context) => Iphone14ProMaxFourScreen(),
    iphone14ProMaxFortyeightScreen: (context) =>
        const Iphone14ProMaxFortyeightScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    iphone14ProMaxFortysevenScreen: (context) =>
        Iphone14ProMaxFortysevenScreen(),
    otp: (context) => OTP(String),
    iphone14ProMaxFortysixScreen: (context) =>
        Iphone14ProMaxFortysixScreen(String),
  };
}
