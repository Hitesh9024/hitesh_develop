import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taajeer/Select%20Language/selectLanguage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taajeer/Utility/LocalString.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
        title: 'app_name'.tr,
        theme: ThemeData(
            primarySwatch: Colors.red,
            textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
                bodyText1: GoogleFonts.roboto(textStyle: textTheme.bodyText1))),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        translations: LocaleString(),
        locale: Get.deviceLocale,
        fallbackLocale: Get.deviceLocale);
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  SplashScreenState();

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, navigationPage);
  }

  navigationPage() {
    Get.off(const SelectLanguage());
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Image.asset('images/Splash.png',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height)
                ]))));
  }
}
