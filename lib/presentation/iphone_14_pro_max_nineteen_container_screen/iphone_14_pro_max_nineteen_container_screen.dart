import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyfive_screen/iphone_14_pro_max_fortyfive_screen.dart';

//import 'package:phytoscan/presentation/iphone_14_pro_max_fourteen_page/iphone_14_pro_max_fourteen_page.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_page/iphone_14_pro_max_nineteen_page.dart';
//import 'package:phytoscan/presentation/iphone_14_pro_max_sixteen_page/iphone_14_pro_max_sixteen_page.dart';
import 'package:phytoscan/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxNineteenContainerScreen extends StatelessWidget {
  Iphone14ProMaxNineteenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.iphone14ProMaxNineteenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: const Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone14ProMaxNineteenPage:
        return const Iphone14ProMaxNineteenPage();
      // case AppRoutes.iphone14ProMaxFortyfivePage:
      //   return Iphone14ProMaxFortyfivePage();
      case AppRoutes.iphone14ProMaxFourteenPage:
       // return Iphone14ProMaxFourteenPage();
      case AppRoutes.iphone14ProMaxSixteenPage:
       // return Iphone14ProMaxSixteenPage();
      default:
        return const Iphone14ProMaxNineteenPage();
    }
  }
}
