import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      required this.onPressed,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kRedColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
        ),
      ),
    );
  }
}
