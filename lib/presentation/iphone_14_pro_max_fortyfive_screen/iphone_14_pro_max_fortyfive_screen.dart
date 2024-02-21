import 'package:flutter/material.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:phytoscan/widgets/custom_icon_button.dart';
import 'package:provider/provider.dart';

// ignore_for_file: must_be_immutable
class Iphone14ProMaxFortyfivePage extends StatelessWidget {
  const Iphone14ProMaxFortyfivePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    TextEditingController desc = TextEditingController();
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildNineteenStack(context),
                
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 35.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 79.v,
                            width: 196.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    userProvider.user.username,
                                    style:
                                        CustomTextStyles.displaySmallGreen90003,
                                  ),
                                ),
                                //SizedBox(height: 50,),
                                //const Icon(
                                //   Icons.location_on_rounded,
                                //   color: Colors.redAccent,
                                // ),
                                // Align(
                                //   alignment: Alignment.bottomCenter,
                                //   child: Text(

                                //     userProvider.user.email,
                                //     // style: CustomTextStyles
                                //     //     .headlineSmallDutch801XBdBTBluegray900,
                                //     style: const TextStyle(fontSize: 17),
                                //     maxLines: 2,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              userProvider.user.email,
                              // style: CustomTextStyles
                              //     .headlineSmallDutch801XBdBTBluegray900,
                              style: const TextStyle(fontSize: 17),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 337.h,
                    margin: EdgeInsets.only(
                      left: 57.h,
                      right: 35.h,
                    ),
                    child: TextFormField(
                      // "I am a economist who loves\n plants and  like to explore to \nabout of them",
                      controller: desc,
                      decoration: const InputDecoration(
                          hintText: "Enter your description"),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      // overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  _buildSeventeenRow(context),
                  SizedBox(height: 12.v),
                  Divider(
                    color: appTheme.green900,
                    indent: 19.h,
                    endIndent: 18.h,
                  ),
                  SizedBox(height: 27.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add_shopping_cart,
                          color: Color(0xFF0A6430)),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          top: 2.v,
                        ),
                        child: const Text(
                          "Buy from your ",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21.v),
                  // ._buildUserProfileList(context),
                  _buildContainer("Amla", 'assets/images/img_rectangle_17.png',
                      "Phytonutrients and antioxidant"),
                  SizedBox(height: 21.v),
                  _buildContainer(
                      "Turmeric",
                      'assets/images/img_rectangle_16.png',
                      "Digestive healing agent"),
                  SizedBox(height: 21.v),
                  _buildContainer(
                      "Cardamom",
                      'assets/images/img_rectangle_15.png',
                      "Strong taste, resinous fragrance"),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteenStack(BuildContext context) {
     final userProvider = Provider.of<UserProvider>(context, listen: false);
     String email=userProvider.user.email;
     String name=userProvider.user.username;
    return Column(
      children: [
        SizedBox(
          height: 349.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle48,
                height: 283.v,
                width: 430.h,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse9187x187,
                height: 187.adaptSize,
                width: 187.adaptSize,
                radius: BorderRadius.circular(
                  93.h,
                ),
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
     
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventeenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 9.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 103.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 17.v,
            ),
            child: Column(children: [
              Text(
                "2",
                style: theme.textTheme.displaySmall,
              ),
              const Text(
                "Purchase",
                style: TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: SizedBox(
              height: 98.v,
              child: VerticalDivider(
                width: 4.h,
                thickness: 4.v,
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 91.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 17.v,
            ),
            child: Column(children: [
              Text(
                "3",
                style: theme.textTheme.displaySmall,
              ),
              const Text(
                "Wishlist",
                style: TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: SizedBox(
              height: 98.v,
              child: VerticalDivider(
                width: 4.h,
                thickness: 4.v,
              ),
            ),
          ),
          Container(
            width: 111.h,
            margin: EdgeInsets.only(
              left: 11.h,
              top: 4.v,
              bottom: 11.v,
            ),
            child: Column(children: [
              Text(
                "1",
                style: theme.textTheme.displaySmall,
              ),
              const Text(
                "Challenge",
                style: TextStyle(fontSize: 20, color: Color(0xFF0A6430)),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer(String title, String imagePath, String textContent) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE0EFE2),
        borderRadius: BorderRadius.circular(28.0),
      ),
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(28.0), // Same radius for outer container
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 150.0, // Same height as the outer container
              width: 140.0, // Width of the image
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style:
                        const TextStyle(fontSize: 25, color: Color(0xFF0F3E12)),
                  ),
                  Text(
                    textContent,
                    style: TextStyle(
                        fontSize: 15, color: Colors.black12.withOpacity(0.35)),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      SizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor:
                            Color(0xFF5EDB7D), // Green background color
                        radius: 15, // Adjust the size of the CircleAvatar
                        child: Icon(
                          Icons.wb_sunny_outlined, // Icon to be displayed
                          color: Colors.black, // Icon color
                          size: 20, // Icon size
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor:
                            Color(0xFF5EDB7D), // Green background color
                        radius: 15, // Adjust the size of the CircleAvatar
                        child: Icon(
                          Icons.water_drop_outlined, // Icon to be displayed
                          color: Colors.black, // Icon color
                          size: 20, // Icon size
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor:
                            Color(0xFF5EDB7D), // Green background color
                        radius: 15, // Adjust the size of the CircleAvatar
                        child: Icon(
                          Icons
                              .thermostat_auto_outlined, // Icon to be displayed
                          color: Colors.black, // Icon color
                          size: 22, // Icon size
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        backgroundColor:
                            Color(0xFF5EDB7D), // Green background color
                        radius: 15, // Adjust the size of the CircleAvatar
                        child: Icon(
                          Icons.collections_outlined, // Icon to be displayed
                          color: Colors.black, // Icon color
                          size: 20, // Icon size
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
}
