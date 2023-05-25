import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:graduationproject/controller/profile_screen_controller.dart';
import 'package:graduationproject/helper/app_colors.dart';

import '../../main.dart';

class SettingItemWidget extends StatelessWidget {
  const SettingItemWidget({Key? key,this.press, required this.icon, required this.title, }) : super(key: key);
final IconData icon;
final String title;
final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
      init: ProfileScreenController(),
      builder: (controller) {
        return InkWell(
          onTap: press,
          child: Column(
            children: [
              Container(
                height: Get.height*0.1,
                width: Get.width*0.9,
                color:box.read('theme') == 'dark' ?  mainDarkColor : white,
                child:Row(
                  children: [
                    Container(
                      height: Get.height*0.08,
                      width: Get.height*0.08,
                      decoration: BoxDecoration(
                        color:mainRedColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child:  Icon(icon,
                        color: mainRedColor.withOpacity(0.7),
                        size: 30,
                      ),
                    ),
                    SizedBox(width: Get.width*0.05,),
                     Text(title,
                      style: const TextStyle(
                        color:grey2,
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ) ,
              ),
            ],
          ),
        );
      }
    );
  }
}
