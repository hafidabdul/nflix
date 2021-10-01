import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';

class InformationProfile extends StatelessWidget {
  final int count;
  final String name;
  const InformationProfile({
    Key? key, required this.count,required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            count.toString(),
            style: whiteTextStyle,
          ),
          Text(
            name,
            style: whiteTextStyle,
          )
        ],
      ),
    );
  }
}
