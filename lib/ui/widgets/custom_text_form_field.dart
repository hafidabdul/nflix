import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFormField(
      {Key? key,
      required this.hintText,
      this.obscureText = false,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
        height: 47,
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: TextFormField(style: TextStyle(color: Colors.white),
          obscureText: obscureText,
          cursorColor: kWhiteColor,
          decoration: InputDecoration(
              hintStyle: whiteTextStyle.copyWith(fontSize: 15),
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kWhiteColor, width: 2),
                  borderRadius: BorderRadius.circular(defaultRadius)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: kWhiteColor, width: 3))),
        ));
  }
}
