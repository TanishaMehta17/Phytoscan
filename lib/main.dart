import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phytoscan/routes/app_routes.dart';
//import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'mohit_s_application1',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.iphone14ProMaxFourScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}

