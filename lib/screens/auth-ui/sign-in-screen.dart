import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/screens/auth-ui/sign-up-screen.dart';
import 'package:storeapp/utils/app-constant.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class SignInSreen extends StatelessWidget {
  const SignInSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Sign in',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Appconstant.AppColorMain,
          ),
          body: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? const Text('keyboard is visible')
                    : Container(
                        color: Appconstant.AppColorMain,
                        height: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/cart.png',
                              width: Get.width / 1,
                              height: Get.height / 10,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                SizedBox(height: Get.height / 20),
                Container(
                  width: Get.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Appconstant.AppScendoryColor,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Appconstant.AppScendoryColor,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: const Icon(Icons.visibility_off),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontSize: 15,
                          color: Appconstant.AppScendoryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  child: Container(
                    width: Get.width / 2,
                    height: Get.height / 18,
                    decoration: BoxDecoration(
                      color: Appconstant.AppColorMain,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w600),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do you have an Account?',
                      style: TextStyle(
                          color: Appconstant.AppScendoryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => const SignUpSreen()),
                      child: const Text(
                        ' SignUp',
                        style: TextStyle(
                            color: Appconstant.AppColorMain,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                            decorationColor: Appconstant.AppColorMain,

                            ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
