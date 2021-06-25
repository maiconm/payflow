import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';

import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/home/home_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {

  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/splash",
      routes: {
        "/barcode_scanner": (context) => BarcpdeScannerPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/splash": (context) => SplashPage(),
      },
    );
  }
}