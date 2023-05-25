import 'package:flutter/material.dart';
import 'package:graduationproject/helper/app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, this.onPressed, this.text}) : super(key: key);
  final Function ()? onPressed;
  final String ? text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      disabledColor: mainGreenColor,
      color: mainGreenColor,
      child: Container(
        padding:const EdgeInsets.symmetric(
          horizontal: 80,vertical: 15,
        ) ,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
