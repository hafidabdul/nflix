import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nflix/model/actor.dart';
import 'package:nflix/model/trailer.dart';

import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/widgets/play_button.dart';

class TrailerWidgets extends StatelessWidget {
  const TrailerWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'Trailer',
                  style: whiteTextStyle.copyWith(
                      fontWeight: extraLight, fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 170,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trailer.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20, right: 10, top: 10),
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(trailer[index]))),
                  child: Align(
                    alignment: Alignment.center,child: PlayButton(),
                  ),
                );
              }),
        )
      ],
    );
  }
}
