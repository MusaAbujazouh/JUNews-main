import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduationproject/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: ((controller) {
          return Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      "assets/images/splash_logo.png",
                    ),
                    scale: 2,
                  )),
                ),
              ));
        }));
  }
}
