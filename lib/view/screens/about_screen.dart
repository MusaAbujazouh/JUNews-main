import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/helper/app_colors.dart';

import '../../main.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
            height: Get.height,
            width: Get.width,
            child:  Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: Get.height*0.15,
                        decoration: BoxDecoration(
                            color:box.read('theme') == 'dark' ?  mainDarkColor.withOpacity(0.9) : mainGreenColor.withOpacity(0.5),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight:Radius.circular(20),
                            )
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal:Get.width*0.05),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){
                                Get.back();},
                                  icon: const Icon(Icons.arrow_back_ios,color: white,)),
                               SizedBox(width: Get.width*0.15,),
                               const Text(
                                 "About Us",
                                 style: TextStyle(
                                     fontSize: 20,
                                     color: white,
                                     fontWeight: FontWeight.bold

                                 ),
                               ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Get.height*0.05,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width*0.05),
                  child: const Text("Hello, We are a group of students from the King Abdullah II College of Information Technology from the Department of Computer Science. We have developed this news application for the University of Jordan, as it will target all categories of students, doctors and workers. We hope that this application will be of interest."),
                ),
                SizedBox(height: Get.height*0.05,),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width*0.1),
                    child: Column(
                      children: [
                        for(int i = 0; i<4; i++)
                        Padding(
                          padding:  EdgeInsets.symmetric(vertical: Get.height*0.01),
                          child: Row(
                            children: [
                              SizedBox(
                                height: Get.height*0.09,
                                width: Get.height*0.08,

                                child: CircleAvatar(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: mainRedColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),

                                ),
                              ),
                              SizedBox(width: Get.width*0.05,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text("Musa AbuJazouh",
                                    style: TextStyle(
                                        color: grey2,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  SizedBox(height: Get.height*0.01,),

                                  Text("Computer Science",
                                    style: TextStyle(
                                        color:grey2,
                                        fontSize: 15,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ),

              ],
            )
        ),
      ),
    );
  }
}
