import 'package:flutter/material.dart';
import 'package:storeapp/screens/auth-ui/sign-in-screen.dart';
import 'package:storeapp/utils/app-constant.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      backgroundColor: Appconstant.AppColorMain,

     body: SignInSreen(),
    );
  }
}