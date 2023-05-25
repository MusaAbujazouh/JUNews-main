import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/view/screens/detail_screen.dart';
import '../../controller/home_screen_controller.dart';
import '../../helper/app_colors.dart';
import '../../main.dart';
import '../widget/NewsList.dart';

class AllNews extends StatelessWidget {
  const AllNews({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
        builder : (controller){
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: Get.height*0.15,
                    decoration: BoxDecoration(
                        color: mainGreenColor.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight:Radius.circular(20),
                        )
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(right:Get.width*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          IconButton(onPressed: (){
                            Get.back();},
                              icon: const Icon(Icons.arrow_back_ios,color:white,)),
                          const Text(
                            "University News",
                            style: TextStyle(
                                fontSize: 20,
                                color: white,
                                fontWeight: FontWeight.bold

                            ),
                          ),
                          const Icon(Icons.newspaper,color:white,size: 30,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height*0.02,),
                  Expanded(
                    child: ListView.separated(
                    itemBuilder: (context,index)=>InkWell(
                      onTap: (){
                        Get.to(DetailsScreen(controller.universityNews[index]));
                      },
                      child: NewsListTitle(index: index,),
                    ),
                      separatorBuilder: (context,index)=> SizedBox(height: Get.height*0.015,),
                      itemCount: controller.universityNews.length,
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
