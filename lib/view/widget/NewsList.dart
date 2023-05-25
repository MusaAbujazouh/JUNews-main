import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/controller/home_screen_controller.dart';
import 'package:graduationproject/helper/app_colors.dart';

import '../../main.dart';

class NewsListTitle extends StatelessWidget {
  NewsListTitle({Key? key, required this.index,this.isFromNotifications}) : super(key: key);
  bool? isFromNotifications;
  final int index;
  @override
  Widget build(BuildContext context) {
  return GetBuilder<HomeScreenController>(
    init: HomeScreenController(),
    builder: (controller) {
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal:Get.width*0.05),
        child: Container(
        width: Get.width,
          height: Get.height*0.12,
          decoration: BoxDecoration(
              color:box.read('theme') == 'dark' ?  secondDarkColor : white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:  [
                BoxShadow(
                  color: isFromNotifications==true?mainGreenColor.withOpacity(0.5):Colors.grey,
                  offset: const Offset(0,1.0),
                  blurRadius: 2,

                )
              ]    ),
          child: Row(
            children: [
              Flexible(
                flex: 3,
                  child:Container(
                    height: Get.height*0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(controller.universityNews[index].urlImage!),
                      fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
              ),
              Flexible(
                flex:5 ,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(controller.universityNews[index].title!,
                      maxLines: 3,
                      style: const TextStyle(
                        color:grey2,
                        fontSize: 12,
                        overflow: TextOverflow.ellipsis,
                      ),
                      ),
                         SizedBox(height: Get.height*0.01,),
                        Text(
                          "See More",
                          style:  TextStyle(
                            color:grey2.withOpacity(0.5),
                            fontSize: 12
                          ),
                        ),

                      ],


                    ),
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
