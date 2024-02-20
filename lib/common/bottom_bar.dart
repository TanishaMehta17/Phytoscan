import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_eighteen_screen/iphone_14_pro_max_eighteen_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyfive_screen/iphone_14_pro_max_fortyfive_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirteen_screen/iphone_14_pro_max_thirteen_screen.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    Iphone14ProMaxThirteenScreen(),
    Iphone14ProMaxFortyfivePage(),
    Iphone14ProMaxEighteenScreen()
  ];
  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userCartLen = context
        .watch<UserProvider>()
        .user
        .cart
        .length; //short syntax for provider.of<context>
    return Scaffold(
        body: pages[_page],
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
                      color: _page == 0
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth),
                )),
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
                      color: _page == 1
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth),
                )),
                child: const Icon(Icons.person_outline_outlined),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: bottomBarWidth,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                      color: _page == 2
                          ? GlobalVariables.selectedNavBarColor
                          : GlobalVariables.backgroundColor,
                      width: bottomBarBorderWidth),
                )),
                child: badges.Badge(
                  badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.white10, elevation: 0),
                  badgeContent: Text(userCartLen.toString()),
                  child: const Icon(Icons.shopping_cart_outlined),
                ),
              ),
              label: '',
            )
          ],
        ));
  }
}
