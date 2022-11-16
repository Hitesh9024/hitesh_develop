import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:taajeer/Utility/LocalString.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);


  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            child: Center(child: Text('app_name'.tr))
          ),
        ));
  }

}
