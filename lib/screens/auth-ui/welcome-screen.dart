import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:storeapp/utils/app-constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Welcome StoreOne',
          style: TextStyle(fontSize: 24,color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Appconstant.AppColorMain,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Appconstant.AppColorMain,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
              ),
              height: 350,
              child: Center(
                child: Image.asset(
                  'assets/images/cart.png',
                  scale: 5.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Happy shopping',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: Appconstant.AppColorMain,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/google.png',
                    
                    width: Get.width / 12,
                    height: Get.height / 12,
                  ),
                  label: Text('Sing in with google',style: TextStyle(color: Colors.white,fontSize: 18),),

                
                ),
              ),
            ),

            SizedBox(height: 10,),
 Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                    color: Appconstant.AppColorMain,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.mail,color: Colors.white,size: 33,),
                  label: Text('Sing in with google',style: TextStyle(color: Colors.white,fontSize: 18),),

                  
                 
                
                ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
