import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:water/home/home.dart';
import 'package:water/onboarding/onboarding.dart';
import 'package:water/order/order_details.dart';
import 'package:water/slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: "Tajawal",
            scaffoldBackgroundColor: Colors.grey.shade200),
        home: MyHomePage(),
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("ar", ""), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: Locale("ar", ""));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen();
  }
}
