import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/loader.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_eighteen_screen/iphone_14_pro_max_eighteen_screen.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:phytoscan/trader/screen/add_product_screen.dart';
import 'package:phytoscan/trader/services/trader_services.dart';
import 'package:phytoscan/trader/widgets/single_product.dart';
import 'package:phytoscan/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:phytoscan/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:phytoscan/widgets/app_bar/appbar_title.dart';
import 'package:phytoscan/widgets/app_bar/custom_app_bar.dart';
import 'package:phytoscan/widgets/custom_search_view.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:qr_scanner/qr_scanner.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Iphone14ProMaxNineteenPage extends StatefulWidget {
  const Iphone14ProMaxNineteenPage({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxNineteenPage> createState() =>
      _Iphone14ProMaxNineteenPage();
}

class _Iphone14ProMaxNineteenPage extends State<Iphone14ProMaxNineteenPage> {
  TextEditingController searchController = TextEditingController();
  List<Product>? products;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await adminServices.fetchAllProducts(
      context,
      onSuccess: () {
        setState(() {});
      },
    );
  }

  void deleteProduct(Product product, int index) {
    adminServices.deleteProduct(
      context: context,
      product: product,
      onSuccess: () {
        products!.removeAt(index);
        setState(() {});
      },
    );
  }

  Future _qrScanner() async {
    // print("qr");
    var cameraStatus = await Permission.camera.status;
    if (cameraStatus.isGranted) {
      scanner.FlutterQrScanner qrdata = scanner.FlutterQrScanner();
      //print(qrdata);
    } else {
      var isgrant = await Permission.camera.request();
      if (isgrant.isGranted) {
        scanner.FlutterQrScanner qrdata = scanner.FlutterQrScanner();
        //print(qrdata);
      }
    }
  }

  void navigateToAddProduct() {
    Navigator.pushNamed(context, AddProductScreen.routeName).then((result) {
      print("HELLO123");
      fetchAllProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userCartLen = context.watch<UserProvider>().user.cart.length;
    List<Widget> pages = [
      const Iphone14ProMaxNineteenPage(),
      Iphone14ProMaxEighteenScreen()
    ];

    double bottomBarWidth = 42;
    double bottomBarBorderWidth = 5;
    int _page = 0;

    void updatePage(int page) {
      if (page == 0) {
        // Navigate to the home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const Iphone14ProMaxNineteenPage()),
        );
      } else if (page == 1) {
        // Navigate to the account page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Iphone14ProMaxEighteenScreen()),
        );
      }
    }

    return products == null
        ? const Loader()
        : Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20.v),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 58.h, right: 22.h),
                        child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search your plants here",
                        ),
                      ),
                      SizedBox(height: 45.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 37.h),
                          child: Text(
                            "Best Selling Plants",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .headlineLargeDMSerifDisplayGray90003,
                          ),
                        ),
                      ),
                      Divider(color: appTheme.black900),
                      SizedBox(height: 29.v),
                      CarouselSlider(
                        items: [
                          _buildContainer(
                            "Amla",
                            'assets/images/img_rectangle_17.png',
                            "Phytonutrients and antioxidant",
                          ),
                          _buildContainer(
                            "Bilva",
                            'assets/images/img_rectangle_17_137x160.png',
                            "Deciduous tree with medicinal uses",
                          ),
                          _buildContainer(
                            "Amla",
                            'assets/images/img_rectangle_17.png',
                            "High Water Content",
                          ),
                          _buildContainer(
                            "Alovera",
                            'assets/images/img_rectangle_13_1.png',
                            "High Water Content",
                          ),
                          _buildContainer(
                            "Shatari",
                            'assets/images/img_rectangle_17_1.png',
                            "Promotes Fertility",
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          aspectRatio: 1.0,
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          height: 150,
                        ),
                      ),
                      const SizedBox(
                          height:
                              40), // Add some spacing between CarouselSlider and GridView
                      GridView.builder(
                        shrinkWrap:
                            true, // Add this line to make the GridView scrollable
                        physics:
                            const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
                        itemCount: products!.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          final productData = products![index];
                          return Column(
                            children: [
                              SizedBox(
                                height: 140,
                                child: SingleProduct(
                                  image: productData.images[0],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Text(
                                      productData.name,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () =>
                                        deleteProduct(productData, index),
                                    icon: const Icon(
                                      Icons.delete_outline,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xFFE0EFE2),
              child: Icon(Icons.add),
              onPressed: navigateToAddProduct,
              tooltip: 'Add a Product',
            ),
            // floatingActionButtonLocation:
            //     FloatingActionButtonLocation.centerFloat,
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
              ],
            ));
  }

  Widget _buildContainer(String title, String imagePath, String textContent) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE0EFE2),
        borderRadius: BorderRadius.circular(18.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(18.0), // Same radius for outer container
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    void logOut(BuildContext context) async {
      try {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        await sharedPreferences.setString('x-auth-token', '');

        Navigator.pushNamedAndRemoveUntil(
          context,
          AppRoutes.iphone14ProMaxOneScreen,
          (route) => false,
        );
      } catch (e) {
        print(e.toString());
      }
    }

    return CustomAppBar(
      height: 75.v,
      leadingWidth: 75.h,
      leading: AppbarLeadingImageOne(
        imagePath: ImageConstant.imgRectangle8,
        margin: EdgeInsets.only(left: 29.h, top: 2.v),
      ),
      title: Container(
        height: 75.11.v,
        width: 209.00002.h,
        margin: EdgeInsets.only(left: 18.h),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AppbarTitle(
              text: "Phytoscan",
              margin: EdgeInsets.only(left: 1.h, right: 7.h, bottom: 17.v),
            ),
            AppbarSubtitleOne(
              text: "Find your plants ",
              margin: EdgeInsets.only(top: 44.v),
            ),
          ],
        ),
      ),
      actions: [
        Container(
            margin: const EdgeInsets.only(top: 2, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFE7EFE7),
            ),
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: () => _qrScanner,
              icon: Icon(Icons.qr_code),
            )),
        Container(
          margin: const EdgeInsets.only(
            top: 2,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFE7EFE7),
          ),
          width: 40,
          height: 40,
          child: IconButton(
              icon: Icon(Icons.logout_rounded),
              onPressed: () {
                logOut(context);
              }),

          //  Space between containers
        ),
        Container(
          height: 40.adaptSize,
          width: 40.adaptSize,
          margin: EdgeInsets.fromLTRB(1.h, 17.v, 27.h, 1.v),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgContrastGreen5001,
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgQrCodeScan,
                height: 30.adaptSize,
                width: 30.adaptSize,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(3.h, 6.v, 7.h, 4.v),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
