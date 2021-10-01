import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';
class PlayButton extends StatelessWidget {



  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Colors.red[300],
            minimumSize: Size(60, 60),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(30.0)))),
        child: Icon(Icons.play_arrow,color: kRedColor,));
  }
}
