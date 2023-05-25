import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/controller/login_screen_controller.dart';
import 'package:graduationproject/helper/app_colors.dart';
import 'package:graduationproject/view/widget/custom_button.dart';
import 'package:graduationproject/view/widget/custom_text_filed.dart';
import '../../main.dart';
import '../widget/ju_news_widget.dart';
import 'home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder <LoginScreenController>(
      init: LoginScreenController(),
        builder:(controller){
      return Scaffold(
        body: SafeArea(
          child: SizedBox(
           width: Get.width,
              height: Get.height,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          color: mainGreenColor.withOpacity(0.2)
                        ),
                        width: Get.width,
                        height:Get.height*0.4,
                        child: Padding(
                          padding:  EdgeInsets.only(top: Get.height*0.03),
                          child: Column(
                            children: [
                              Image(
                                image: const AssetImage("assets/images/JU.png"),
                                height:  Get.height*0.25,

                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: Get.height*0.3,
                        left: Get.width*0.1,
                        child: Column(
                          children: [
                            Container(
                                width: Get.width*0.8,
                                height: Get.height*0.55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusDirectional.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: black.withOpacity(0.2),
                                      blurRadius: 1.0,
                                      offset:const Offset(0,1),
                                    ),
                                  ],
                                  color:box.read('theme') == 'dark' ? mainDarkColor : white,
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(Get.width*0.05),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Login", style: Theme.of(context).textTheme.headlineMedium,),
                                      SizedBox(height: Get.height*0.05,),
                                      Form(
                                        key:controller.formKey,
                                        child: Column(
                                          children: [
                                            CustomTextFiled(
                                                controller: controller.email,
                                                type: TextInputType.emailAddress,
                                                prefix: Icons.email,
                                                // hint: "Email@gmail.com",
                                                label: "Email Address",
                                                validation: (value){
                                                  if(value!.isEmpty)
                                                  {
                                                    return "Email must not be Empty!";
                                                  }
                                                  return null;
                                                },
                                              isPassword: false,
                                            ),
                                            SizedBox(height: Get.height*0.04,),
                                            CustomTextFiled(
                                                controller: controller.pass,
                                                label: "Password",
                                                prefix: Icons.lock,
                                                suffix: controller.isPassword ==true?Icons.visibility_off: Icons.visibility,
                                                type: TextInputType.text,
                                                isPassword:controller.isPassword,
                                                suffixPressed:() {
                                                      controller.showPassword();
                                                    },
                                                validation: (value){
                                                  if(value!.isEmpty)
                                                  {
                                                    return "Password must not be Empty!";
                                                  }
                                                  return null;
                                                }
                                            ),
                                            SizedBox(height: Get.height*0.05,),
                                            CustomButton(
                                                text: "Login",
                                                onPressed: () async {
                                                  try {
                                                    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                                        email: controller.email.text,
                                                        password: controller.pass.text,
                                                    );
                                                    Get.to(const HomeScreen());
                                                  } on FirebaseAuthException catch (e) {
                                                    if (e.code == 'user-not-found') {
                                                      print('No user found for that email.');
                                                    } else if (e.code == 'wrong-password') {
                                                      print('Wrong password provided for that user.');
                                                    }
                                                  }

                                                }
                                            ),

                                          ],
                                        ),
                                      ),

                                    ],
                                  ),

                                )
                            ),
                            SizedBox(height: Get.height*0.05,),
                             const JUNewsWidget(fontSize: 25,)

                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      );
    } );

  }
}


