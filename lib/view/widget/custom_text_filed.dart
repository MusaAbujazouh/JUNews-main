import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:graduationproject/helper/app_colors.dart';

class CustomTextFiled extends StatelessWidget {
   CustomTextFiled({
     Key? key,
     required this.controller,
     this.type,
     required this.validation,
     this.hint,
     this.label,
     this.prefix,
     required this.isPassword,
      this.suffixPressed,
   this.suffix
   }) : super(key: key);
  final TextEditingController ? controller;
    TextInputType ? type;
  final FormFieldValidator<String>? validation;
   String ? hint;
   String ? label;
   IconData ? prefix;
   bool isPassword = false;
   Callback?suffixPressed;
      IconData ? suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      autocorrect: false,
      cursorColor: mainGreenColor,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
            fontSize: 18,
          color:mainGreenColor
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
              color:mainGreenColor

          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color:mainGreenColor,
           ),),
        hintText: hint,
        hintStyle: const TextStyle(
          color:mainGreenColor
        ),
        labelText: label,

        prefixIcon:Icon(
          prefix,
          color: grey,
        ),
        fillColor:mainGreenColor,


        suffixIcon:suffix != null ?
        InkWell(
          onTap: suffixPressed,
          child: Icon(
            suffix,
            color:grey,
          ),
        ):null,

      ),
      keyboardType: type,
      validator:validation,

    );
  }
}
