import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taajeer/Intro%20Screen/introScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taajeer/Utility/colorFile.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  SelectLanguageState createState() => SelectLanguageState();
}

class SelectLanguageState extends State<SelectLanguage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: primaryFirst,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(children: <Widget>[
                  SingleChildScrollView(
                      child: Image.asset('images/bg.png',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height)),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 10,
                      left: MediaQuery.of(context).size.width / 5,
                      child: Column(children: [
                        SvgPicture.asset("images/selectLanguageAr.svg"),
                        const SizedBox(height: 5),
                        Text('select_language'.tr.toUpperCase(),
                            style: TextStyle(
                                color: Colors.grey.shade500, letterSpacing: 3))
                      ])),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 2.8,
                      left: MediaQuery.of(context).size.width / 3,
                      child: Column(children: [
                        InkWell(
                            onTap: () {
                              const Locale("ar_DZ");
                              var locale = const Locale("ar", "DZ");
                              Get.updateLocale(locale);
                              Get.to(IntroScreen());
                            },
                            child: Column(children: [
                              SvgPicture.asset("images/Ar.svg"),
                              const SizedBox(height: 5),
                              Text('arabic'.tr,
                                  style: TextStyle(color: Colors.grey.shade400))
                            ])),
                        const SizedBox(height: 30),
                        InkWell(
                            onTap: () {
                              const Locale("en_US");
                              var locale = const Locale("en", "US");
                              Get.updateLocale(locale);
                              Get.to(IntroScreen());
                            },
                            child: Column(children: [
                              SvgPicture.asset("images/En.svg"),
                              const SizedBox(height: 5),
                              Text('english'.tr,
                                  style: TextStyle(color: Colors.grey.shade400))
                            ]))
                      ]))
                ]))));
  }
}