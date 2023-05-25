import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:graduationproject/controller/profile_screen_controller.dart';
import 'package:graduationproject/helper/app_colors.dart';
import 'package:graduationproject/view/screens/collage_screen.dart';
import 'package:graduationproject/view/screens/login_screen.dart';
import 'package:graduationproject/view/screens/saved_news_screen.dart';
import 'package:graduationproject/view/widget/bottom_navigation_bar_item.dart';
import 'package:graduationproject/view/widget/setting_item_widget.dart';

import '../../controller/theme_controller.dart';
import '../../main.dart';
import 'about_screen.dart';
import 'home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ThemeController());
    GetStorage box = GetStorage();

    return GetBuilder<ProfileScreenController>(
        init: ProfileScreenController(),
        builder: (_) {
          return SafeArea(

            child: Scaffold(
              bottomNavigationBar:Container(
                  height: Get.height*0.07,
                  width: Get.width*0.9,
                  margin:  EdgeInsets.symmetric(horizontal: Get.width*0.03,vertical: Get.height*0.01),
                  decoration: BoxDecoration(
                    color:box.read('theme') == 'dark' ?  mainDarkColor : mainGreenColor,
                    borderRadius: BorderRadius.circular(26),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      NavigationTabItem(icon:Icons.home,label: "Home",above: false,onTap: (){
                        Get.to(const HomeScreen());},),
                      NavigationTabItem(icon:Icons.apartment,label: "Collages",above: false,onTap: (){
                        Get.to(const CollageScreen());
                      },),
                      NavigationTabItem(icon:Icons.bookmark,label: "Saved",above: false,onTap: (){
                        Get.to(const SavedNewsScreen());
                      },),
                      NavigationTabItem(icon:Icons.person,label: "Profile",above: true,onTap: (){},),
                    ],
                  )
              ),
              body: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: Get.height*0.45,
                          width: Get.width,
                          decoration:  BoxDecoration(
                            color:box.read('theme') == 'dark' ?  mainDarkColor.withOpacity(0.6) : mainGreenColor.withOpacity(0.6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: Get.height*0.15,
                                width: Get.height*0.15,

                                child: CircleAvatar(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                    ),
                                  ),

                                ),
                              ),
                              SizedBox(height: Get.height*0.02,),
                              const Text("User Name",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: Get.height*0.01,),
                              const Text("College Name",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),),
                              SizedBox(height: Get.height*0.05,),

                            ],
                          ),
                        ),
                        Positioned(
                          top: Get.height*0.35,
                          child: Column(
                            children: [
                              Container(
                                width: Get.width,
                                height: Get.height*0.65,
                                decoration: BoxDecoration(
                                  color:box.read('theme') == 'dark' ?  mainDarkColor.withOpacity(0.9) : white,

                                  borderRadius: BorderRadiusDirectional.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: grey.withOpacity(0.5),
                                      blurRadius: 15.0,
                                      offset:const Offset(0,2),
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: Get.width*0.05,vertical: Get.height*0.03),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:   [
                                        const Text(
                                          "Settings",
                                          style: TextStyle(
                                              fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(height: 20,),
                                         SettingItemWidget(icon: Icons.brightness_4_outlined, title: "Theme Mode",
                                        press: (){
                                              setState(() {
                                                print(box.read('theme'));
                                                box.read('theme') == 'light' ?controller.setThemeMode(ThemeMode.dark) : controller.setThemeMode(ThemeMode.light);
                                              });
                                            }),
                                         SettingItemWidget(icon: Icons.language, title: "Language", ),
                                        InkWell(
                                            onTap: (){
                                              Get.to(const AboutScreen());
                                            },
                                            child: const SettingItemWidget(icon: Icons.info_outline, title: "About Us", )),
                                       InkWell(
                                         onTap: (){
                                          // Get.to(const LoginScreen());
                                         },
                                           child: SettingItemWidget(icon: Icons.logout, title: "Logout", )
                                       ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}