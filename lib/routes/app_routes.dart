// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:phytoscan/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_one_screen/iphone_14_pro_max_one_screen.dart';
import 'package:phytoscan/presentation/frame_eight_screen/frame_eight_screen.dart';

import 'package:phytoscan/presentation/iphone_14_pro_max_fortyeight_screen/iphone_14_pro_max_fortyeight_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyseven_screen/iphone_14_pro_max_fortyseven_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_three_screen/iphone_14_pro_max_three_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_four_screen/iphone_14_pro_max_four_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortysix_screen/iphone_14_pro_max_fortysix_screen.dart';
class AppRoutes{
  static const String iphone14ProMaxFortyeightScreen='/iphone_14_pro_max_fortyeight_screen.dart';
  static const String iphone14ProMaxFortysevenScreen='/iphone_14_pro_max_fortyseven_screen.dart';
  static const String iphone14ProMaxFortysixScreen ='/iphone_14_pro_max_fortysix_screen.dart';
  static const String iphone14ProMaxFourScreen='/iphone_14_pro_max_four_screen';
  static const String frameEightScreen='/frame_eight_screen.dart';
  static const String iphone14ProMaxThreeScreen='/iphone_14_pro_max_three_screen.dart';
  static const String iphone14ProMaxOneScreen='/iphone_14_pro_max_one_screen';
  
 static const String appNavigationScreen = '/app_navigation_screen';

 static Map<String,WidgetBuilder> routes ={
  iphone14ProMaxOneScreen: (context) => const Iphone14ProMaxOneScreen(),
  iphone14ProMaxThreeScreen: (context)=>  Iphone14ProMaxThreeScreen(),
frameEightScreen: (context) => const FrameEightScreen(),
iphone14ProMaxFourScreen:(context) => Iphone14ProMaxFourScreen(),
iphone14ProMaxFortyeightScreen:(context) => Iphone14ProMaxFortyeightScreen(),
appNavigationScreen: (context) => const AppNavigationScreen(),
iphone14ProMaxFortysevenScreen: (context)=>Iphone14ProMaxFortysevenScreen(),

iphone14ProMaxFortysixScreen:(context)=>const Iphone14ProMaxFortysixScreen(),
 };

}
