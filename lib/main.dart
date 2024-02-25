import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phytoscan/presentation/authservice.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_fortyfive_screen/iphone_14_pro_max_fortyfive_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_four_screen/iphone_14_pro_max_four_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_nineteen_page/iphone_14_pro_max_nineteen_page.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_one_screen/iphone_14_pro_max_one_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_thirteen_screen/iphone_14_pro_max_thirteen_screen.dart';
import 'package:phytoscan/presentation/iphone_14_pro_max_three_screen/iphone_14_pro_max_three_screen.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:provider/provider.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      ),
    ],
    child:  const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'mohit_s_application1',
          debugShowCheckedModeBanner: false,
          //initialRoute: AppRoutes.iphone14ProMaxThreeScreen,
          routes: AppRoutes.routes,
          home: Provider.of<UserProvider>(context).user.token.isNotEmpty?(
           Provider.of<UserProvider>(context).user.type=="user"?const Iphone14ProMaxThirteenScreen(): Iphone14ProMaxNineteenPage())
          : const Iphone14ProMaxOneScreen(),
           //home: const Iphone14ProMaxThirteenScreen(),
        );
      },
    );
  }
}
