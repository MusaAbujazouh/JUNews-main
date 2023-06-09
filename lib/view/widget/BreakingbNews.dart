import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../helper/app_colors.dart';
import '../../model/news_model.dart';
import '../screens/detail_screen.dart';

class BreakingNewsCard extends StatelessWidget {
   BreakingNewsCard(this.data,{Key? key}) : super(key: key);
NewsDataModel data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(DetailsScreen(data));
      },
      child: Container(
        width: Get.width*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(data.urlImage!),
          ),
        ),
        child: Container(
          width: Get.width*0.8,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient:  LinearGradient(
              colors: [
               grey.withOpacity(0.2),
                black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),

          child: Padding(
            padding:  EdgeInsets.only(left: Get.width*0.05,right:  Get.width*0.05,bottom:  Get.width*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    data.title!,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis,

                  ),
                ),
               // Text(
               //   data.author!,
               //   style: const TextStyle
               //     (
               //     color: Colors.white70,
               //     fontWeight: FontWeight.bold,
               //     fontSize: 12,
               //   ),
               // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
