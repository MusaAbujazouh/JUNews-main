import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/controller/home_screen_controller.dart';
import 'package:graduationproject/view/screens/profile_screen.dart';
import 'package:graduationproject/view/screens/saved_news_screen.dart';
import 'package:graduationproject/view/widget/BreakingbNews.dart';
import 'package:graduationproject/view/widget/college_logo_widget.dart';
import 'package:graduationproject/view/widget/ju_news_widget.dart';

import '../../helper/app_colors.dart';
import '../../main.dart';
import '../widget/NewsList.dart';
import '../widget/bottom_navigation_bar_item.dart';
import 'all_news_call.dart';
import 'collage_screen.dart';
import 'collage_screen_detail.dart';
import 'detail_screen.dart';
import 'notifications_screen.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder <HomeScreenController>(
        init: HomeScreenController(),
        builder :(controller){
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false, // remove icon back
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              title:  Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/smju.png"),
                    radius: 23,
                  ),
                  SizedBox(width: 8,),
                JUNewsWidget(fontSize: 20,)
                ],
              ),
              actions: [
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.red.shade400,
                    child: IconButton(
                        onPressed: (){
                          Get.to(const NotificationsScreen());
                        },
                        icon:const Icon(Icons.notification_add,color: Colors.white,)),
                  ),
                )
              ],
            ),

            bottomNavigationBar:Container(
              height: Get.height*0.07,
              width: Get.width*0.9,
              margin:  EdgeInsets.symmetric(horizontal: Get.width*0.03,vertical: Get.height*0.01),
              decoration: BoxDecoration(
                color: box.read('theme') == 'dark' ?  mainDarkColor :mainGreenColor,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavigationTabItem(icon:Icons.home,label: "Home",above: true,onTap: (){},),
                  NavigationTabItem(icon:Icons.apartment,label: "Collages",above: false,onTap: (){
                    Get.to(const CollageScreen());},),
                  NavigationTabItem(icon:Icons.bookmark,label: "Saved",above: false,onTap: (){
                    Get.to(const SavedNewsScreen());},),
                  NavigationTabItem(icon:Icons.person,label: "Profile",above: false,onTap: (){
                    Get.to(const ProfileScreen());
                  },),
                ],
              )
            ),

            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:Get.width*0.05),
                  child: const Text(
                    "University News",
                    style: TextStyle(
                      fontSize: 20,
                      color: grey2,

                    ),
                  ),
                ),
                 SizedBox(height: Get.height*0.01,),
               CarouselSlider.builder(
                 itemCount: controller.universityNews.length,
                 itemBuilder: (context,index,id)=>
                   BreakingNewsCard(controller.universityNews[index]),
                   options: CarouselOptions(aspectRatio: 16/9,
                       enableInfiniteScroll: false,
                       enlargeCenterPage: true),),
                SizedBox(height: Get.height*0.02,),
                SizedBox(
                  height: Get.height*0.09,
                  width: Get.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal:Get.width*0.05),
                      child: Row(
                        children: [
                          for(int i =0; i<controller.collegesData.length;i++)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Container(
                                  width: Get.width*0.2,
                                  child: InkWell(
                                      onTap: (){  Get.to(CollageDetailsScreen(index: i));
                                      },
                                      child: CollegeLogoWidget(collegeLogo: controller.collegesData[i]["image"]!,isWithName: false,size: 45,))),
                            )

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height*0.02,),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:Get.width*0.05),
                  child: Row(
                    children: [
                      const Text(
                        "Recent News",
                        style: TextStyle(
                          fontSize: 20,
                            color: grey2,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: (){
                        Get.to(const AllNews());
                      },
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              fontSize: 15,
                              color: mainRedColor,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: Get.height*0.01,),
                Expanded(
                  child: ListView.separated(
                      itemBuilder:(context,index)=>
                          InkWell(
                          onTap: (){
                            Get.to(DetailsScreen(controller.universityNews[index]));
                          },
                              child: NewsListTitle(index: index,)) ,
                      separatorBuilder:(context,index)=> SizedBox(height: Get.height*0.015,) ,
                      itemCount: controller.universityNews.length),
                ),
              ],
            ),

          );
        } );
  }
}


