import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeVariantOutlineOnprimary,
      activeIcon: ImageConstant.imgHomeVariantOutlineOnprimary,
      type: BottomBarEnum.Homevariantoutlineonprimary,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserPositioningBlack900,
      activeIcon: ImageConstant.imgUserPositioningBlack900,
      type: BottomBarEnum.Userpositioningblack900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGamepadVariantOutline,
      activeIcon: ImageConstant.imgGamepadVariantOutline,
      type: BottomBarEnum.Gamepadvariantoutline,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      type: BottomBarEnum.Cart,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.v,
      decoration: BoxDecoration(
        color: appTheme.green40001,
        borderRadius: BorderRadius.circular(
          28.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 40.adaptSize,
              width: 40.adaptSize,
              color: appTheme.black900,
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  color: theme.colorScheme.onPrimary,
                ),
                SizedBox(
                  width: 45.h,
                  child: Divider(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homevariantoutlineonprimary,
  Userpositioningblack900,
  Gamepadvariantoutline,
  Cart,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
