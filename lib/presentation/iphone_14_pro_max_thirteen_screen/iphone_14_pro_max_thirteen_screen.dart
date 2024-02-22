import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:phytoscan/cart/cart_screen.dart';
import 'package:phytoscan/loader.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyfive_screen/iphone_14_pro_max_fortyfive_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_page/iphone_14_pro_max_nineteen_page.dart';
import 'package:phytoscan/product/product_services.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:phytoscan/trader/widgets/single_product.dart';
import 'package:phytoscan/widgets/custom_search_view.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart' as badges;
import 'package:qr_scanner/qr_scanner.dart' as scanner;
import 'package:permission_handler/permission_handler.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Iphone14ProMaxThirteenScreen extends StatefulWidget {
  const Iphone14ProMaxThirteenScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxThirteenScreen> createState() =>
      _Iphone14ProMaxThirteenScreenState();
}

class _Iphone14ProMaxThirteenScreenState
    extends State<Iphone14ProMaxThirteenScreen> {
  TextEditingController searchController = TextEditingController();
  final ProductDetailsServices productServices = ProductDetailsServices();
  List<Product>? products;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  late Product _product;

  @override
  void initState() {
    
    fetchAllProducts();
    super.initState();
  }

  fetchAllProducts() async {
    products = await productServices.fetchAllProducts(
      context,
      onSuccess: () {
        setState(() {});
      },
    );
  }
  //    void navigateToAddProduct() {
  //   Navigator.pushNamed(context, AddProductScreen.routeName).then((result){
  //    // print("HELLO123");
  //   fetchAllProducts();

  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final ProductDetailsServices productDetailsServices =
        ProductDetailsServices();
    void addToCart() {
      productDetailsServices.addToCart(
        context: context,
        product: _product,
      );
      //print("sss");
      Navigator.pushNamed(
        context,
        AppRoutes.cartScreen,
        arguments: _product,
      );
    }

    final userCartLen = context.watch<UserProvider>().user.cart.length;

    List<Widget> pages = [
      const Iphone14ProMaxThirteenScreen(),
      const Iphone14ProMaxFortyfivePage(),
      const CartScreen()
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
              builder: (context) => const Iphone14ProMaxThirteenScreen()),
        );
      } else if (page == 1) {
        // Navigate to the account page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const Iphone14ProMaxFortyfivePage()),
        );
      } else if (page == 2) {
        // Navigate to the cart page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const CartScreen()),
        );
      }
    }

    // Future _qrScanner() async {
    //   // print("qr");
    //   var cameraStatus = await Permission.camera.status;
    //   if (cameraStatus.isGranted) {
    //     scanner.FlutterQrScanner qrdata = scanner.FlutterQrScanner();
    //     //print(qrdata);
    //   } else {
    //     var isgrant = await Permission.camera.request();
    //     if (isgrant.isGranted) {
    //       scanner.FlutterQrScanner qrdata = scanner.FlutterQrScanner();
    //       //print(qrdata);
    //     }
    //   }
    // }
    void navigateToCamera(){
      Navigator.pushNamed(context, AppRoutes.camera);
    }

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


 
//  final user = context.watch<UserProvider>().user;
 return products==null?const Loader():
     SafeArea(

      child: Scaffold(
          appBar: AppBar(
            title: Container(
              height: 80,
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/img_rectangle_8.png',
                    width: 50,
                    height: 60,
                  ), // Icon of the app on the left
                  const SizedBox(
                      width: 25), // Some spacing between the icon and text
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        const Text(
                          'Phytoscan',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF1B5820),
                          ),
                        ),
                        Text(
                          'find your plants',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black12.withOpacity(0.35),
                          ),
                        ),
                      ],
                    ),
                  ), // Title of the app
                ],
              ),
            ),
            centerTitle: true, // Center the title within the app bar
            actions: [
              Container(

                margin:const  EdgeInsets.only(top: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:const Color(0xFFE7EFE7),
                ),
                width: 40,
                height: 40,
                child:// const Icon(Icons.qr_code),
                 IconButton(onPressed: ()=> navigateToCamera(), icon: Icon(Icons.qr_code),)
              ),
            Container(
                  margin: const EdgeInsets.only(top: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFE7EFE7),
                  ),
                  width: 40,
                  height: 40,
                  child: // const Icon(Icons.qr_code),
                      IconButton(
                    onPressed: () => navigateToCamera(),
                    icon: Icon(Icons.qr_code),
                  )),

              Container(
                margin: const EdgeInsets.only(top: 10, right: 10),
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

                // Space between containers
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  //const SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.h, right: 42.h),
                      child: CustomSearchView(
                        controller: searchController,
                        hintText: "Search your plants here",
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "My plants",
                        style: CustomTextStyles.headlineMediumGray90002,
                      ),
                    ),
                  ),
                  const ContainerCarousel(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Add these plants \nin your cart",
                        style:
                            TextStyle(color: Color(0xFF053418), fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.shopping_cart)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                      return GestureDetector(
                        onTap: () {
                          _product = Product(
                            name: productData.name,
                            description:
                                'It is used for Skin disease and to speed up wound healing',
                            quantity: 1,
                            images: [
                              productData.images[0],
                            ],
                            soldBy: "MOHIT",
                            price: 200,
                          );
                          addToCart();
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 140,
                              child: SingleProduct(
                                image: productData.images[0],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                Text(productData.price.toString())

                                // IconButton(
                                //   onPressed: () =>
                                //       deleteProduct(productData, index),
                                //   icon: const Icon(
                                //     Icons.delete_outline,
                                //   ),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
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
          )),
    );
  }
}

class ContainerCarousel extends StatefulWidget {
  const ContainerCarousel({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ContainerCarouselState createState() => _ContainerCarouselState();
}

class _ContainerCarouselState extends State<ContainerCarousel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          CarouselSlider(
            items: [
              _buildContainer(
                  "Tulsi", 'assets/images/tulsi.jpg', "High Wter Content"),
              _buildContainer(
                  "Neem", 'assets/images/neem.jpg', "High Wter Content"),
              _buildContainer("Amla", 'assets/images/img_rectangle_17.png',
                  "High Wter Content"),
              _buildContainer("Alovera", 'assets/images/img_rectangle_13_1.png',
                  "High Wter Content"),
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 1.0,
              // enlargeCenterPage: true,
              viewportFraction: 1.0,
              height: 150,
            ),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Popular plants",
                style: CustomTextStyles.headlineMediumGray90002,
              ),
            ),
          ),
          const SizedBox(height: 20),
          CarouselSlider(
            items: [
              _buildContainers(
                "Tulsi",
                'assets/images/img_rectangle_40_13.png',
                "Rose",
                "assets/images/img_rectangle_40_3.png",
              ),
              _buildContainers(
                "Coriander",
                'assets/images/img_rectangle_40_6.png',
                "Betel",
                "assets/images/img_rectangle_40_1.png",
              ),
              _buildContainers(
                "Ashoka",
                'assets/images/img_rectangle_40_4.png',
                "Ashwagandha",
                "assets/images/img_rectangle_40_449x430.png",
              ),
              _buildContainers(
                "Camphor",
                'assets/images/img_rectangle_40_11.png',
                "Jasmine",
                "assets/images/img_rectangle_40_2.png",
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 2.0,
              //enlargeCenterPage: true,
              viewportFraction: 1.0,
              height: 198,
            ),
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 80),
          CarouselSlider(
            items: [
              _buildContainers(
                "Neem",
                'assets/images/img_rectangle_40_14.png',
                "Castor",
                "assets/images/img_rectangle_40_5.png",
              ),
              _buildContainers(
                "Heena",
                'assets/images/img_rectangle_40_9.png',
                "Lemon Grass",
                "assets/images/img_rectangle_40_8.png",
              ),
              _buildContainers(
                "Eucalyptus",
                'assets/images/img_rectangle_40_7.png',
                "Aralia",
                "assets/images/img_rectangle_40.png",
              ),
              _buildContainers(
                "Lemon",
                'assets/images/img_rectangle_40_10.png',
                "Mint",
                "assets/images/img_rectangle_40_12.png",
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              aspectRatio: 2.0,
              //enlargeCenterPage: true,
              viewportFraction: 1.0,
              height: 198,
            ),
          ),
          const SizedBox(height: 30),
          // Padding(
          //   padding: const EdgeInsets.only(left: 290),
          //   child: GestureDetector(
          //     onTap: () {},
          //     child: Container(
          //       width: 80,
          //       height: 80,
          //       child: Image.asset('assets/images/chat.jpg'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
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

  Widget _buildContainers(
      String title1, String imagePath1, String title2, String imagePath2) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                navigate(context, title1);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF86AB89),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildInnerContainer(imagePath1),
                    const SizedBox(height: 10),
                    Text(title1,
                        style: const TextStyle(
                            fontSize: 20, color: Color(0xFF053418))),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          Expanded(
            child: GestureDetector(
              onTap: () {
                navigate(context, title2);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF86AB89),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildInnerContainer(imagePath2),
                    const SizedBox(height: 10),
                    Text(title2,
                        style: const TextStyle(
                            fontSize: 20, color: Color(0xFF053418))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInnerContainer(String imagePath) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Image.asset(
        imagePath,
        width: 100,
        height: 159,
        fit: BoxFit.cover,
      ),
    );
  }
}

void navigate(BuildContext context, String name) {
  if (name == "Rose") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentyfiveScreen);
  } else if (name == "Tulsi") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortyScreen);
  } else if (name == "Ashwagandha") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentysevenScreen);
  } else if (name == "Ashoka") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtythreeScreen);
  } else if (name == "Jasmine") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwelveScreen);
  } else if (name == "Betel") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtytwoScreen);
  } else if (name == "Coriander") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyfourScreen);
  } else if (name == "Camphor") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyoneScreen);
  } else if (name == "Neem") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortyoneScreen);
  } else if (name == "Castor") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyScreen);
  } else if (name == "Heena") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtysevenScreen);
  } else if (name == "Lemon Grass") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtysixScreen);
  } else if (name == "Eucalyptus") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyfiveScreen);
  } else if (name == "Aralia") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentysixScreen);
  } else if (name == "Lemon") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyeightScreen);
  } else if (name == "Mint") {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtynineScreen);
  }
}
