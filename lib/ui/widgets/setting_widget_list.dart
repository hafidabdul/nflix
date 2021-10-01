import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';

class SettingWidgetList extends StatelessWidget {

  final IconData gambar;
  final String name;
  final String choose;
  const SettingWidgetList({
    Key? key,required this.gambar,required this.name,this.choose= ''
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child: Row(
          children: [
            Padding(padding: EdgeInsets.all(10),child: Icon(gambar ,color: kRedColor,)),
            Text(name,style: whiteTextStyle,),
          ],
        )),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: choose == '' ? Icon(Icons.arrow_forward_ios):Text(choose,style: redTextStyle,),
        )
      ],
    );
  }
}