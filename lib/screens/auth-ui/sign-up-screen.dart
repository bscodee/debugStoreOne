import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/screens/auth-ui/sign-in-screen.dart';
import 'package:storeapp/utils/app-constant.dart';

class SignUpSreen extends StatelessWidget {
  const SignUpSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Appconstant.AppColorMain,
      ),
      body: Container(
        child: Column(
          children: [
            
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: const Text('Welcome to Join',style: TextStyle(
                    color: Appconstant.AppScendoryColor,
                    fontSize: 17,
                   ),),
                 ),
               
            SizedBox(height: Get.height / 20),
            Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  cursorColor: Appconstant.AppScendoryColor,
                  decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: const Icon(Icons.person),
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
                  keyboardType: TextInputType.phone,
                  cursorColor: Appconstant.AppScendoryColor,
                  decoration: InputDecoration(
                      hintText: 'Phone',
                      prefixIcon: const Icon(Icons.phone),
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
                  keyboardType: TextInputType.streetAddress,
                  cursorColor: Appconstant.AppScendoryColor,
                  decoration: InputDecoration(
                      hintText: 'City',
                      prefixIcon: const Icon(Icons.location_city),
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
                  keyboardType: TextInputType.visiblePassword,
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
                      'SIGN UP',
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
                  'Already have an Account?',
                  style: TextStyle(
                      color: Appconstant.AppScendoryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                GestureDetector(
                  onTap: () => Get.offAll(() => SignInSreen()),
                  child: const Text(
                    ' SignIn',
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
  }
}
