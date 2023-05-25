import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/helper/app_colors.dart';

import '../../controller/home_screen_controller.dart';
import '../../main.dart';
import '../widget/NewsList.dart';
import 'detail_screen.dart';
class CollageDetailsScreen extends StatelessWidget {
   const CollageDetailsScreen( {Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return GetBuilder <HomeScreenController>(
        init: HomeScreenController(),
    builder :(controller){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: Get.height*0.32,
              child: Stack(
                children: [
                  Container(
                        height: Get.height*0.28,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            image: const DecorationImage(
                                image: NetworkImage("https://computer.ju.edu.jo/ar/Arabic/PublishingImages/Featured%20Images/kasit_outside-2.jpg"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                  Positioned(
                    top: Get.height*0.23,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal:Get.width*0.05,
                      ),
                      child: Container(
                        width: Get.width*0.9,
                        height: Get.height*0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                          boxShadow:const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0,
                              offset:Offset(0,2),
                            ),
                          ],
                          color:box.read('theme') == 'dark' ?  mainDarkColor : Colors.white,
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              controller.collegesData[index]["name"]??"",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style:  const TextStyle(
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                                color: mainGreenColor

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height*0.02,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: Get.width*0.05),
              child:  Row(
                children: [
                  Text(
                    "College News",
                    style: TextStyle(
                        fontSize: 20,
                        color: grey2,

                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height*0.02,),
            Expanded(
              child: ListView.separated(
                  itemBuilder:(context,index)=>
                      InkWell(
                      onTap: (){
                        Get.to(DetailsScreen(controller.collegesNews[index]));
                      },child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: Get.width*0.05),
                        child: NewsListTitle(index: index,),
                      )) ,
                  separatorBuilder:(context,index)=> SizedBox(height: Get.height*0.01,) ,
                  itemCount: controller.collegesNews.length),
            ),

          ],
        ),
      ),



      );

    } );

  }
}
