// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
// import 'package:lottie/lottie.dart';
import 'package:storeapp/screens/user-panel/main-screen.dart';
import 'package:storeapp/utils/app-constant.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override


void initState(){
  super.initState();

  Timer(const Duration(seconds: 3), () {
    Get.offAll(() => MainScreen());
  });


}


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appconstant.AppColorMain,
      appBar: AppBar(
      backgroundColor: Appconstant.AppColorMain,

        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: Get.width,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/cart.png', 
                  color: Colors.white,
                  scale: 3.5,
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: Get.width, 
              alignment: Alignment.center,
              child: Text(
                'Prowered By ' + Appconstant.AppMainName,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
