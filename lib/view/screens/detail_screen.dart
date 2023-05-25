import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/model/news_model.dart';

import '../../helper/app_colors.dart';
import '../../main.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen(this.data,{Key? key}) : super(key: key);
   NewsDataModel data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: Get.height*0.45,
                      width: Get.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(data.urlImage!),
                          fit: BoxFit.cover
                        )
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
                                color: box.read('theme') == 'dark' ?  secondDarkColor :white,

                                borderRadius: BorderRadiusDirectional.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: grey2.withOpacity(0.5),
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
                                  children: [
                                    Text(
                                      data.title!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: mainGreenColor,
                                      ),
                                    ),
                                     SizedBox(height:Get.height*0.02 ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: (){},
                                          child: Icon(
                                            Icons.bookmark_border_outlined,
                                            size: 30,
                                          color: grey2.withOpacity(0.4),
                                          ),
                                        ),
                                        const Spacer(),
                                        InkWell(
                                          onTap: (){},
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.play_circle_outline,
                                                size: 30,
                                                color: mainRedColor,

                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                "Play",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                    color: grey2.withOpacity(0.6),

                                              ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:Get.height*0.04 ),
                                    Text(
                                      data.content!,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: grey2,
                                      ),
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
      ),
    );
  }
}

