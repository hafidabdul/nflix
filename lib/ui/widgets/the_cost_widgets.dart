import 'package:flutter/material.dart';
import 'package:nflix/model/actor.dart';

import 'package:nflix/shared/theme.dart';

class TheCostWidgets extends StatelessWidget {
  const TheCostWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  'The Cost',
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
          height: 90,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: actorList.length,
              itemBuilder: (context, index) {
                final Actor actor = actorList[index];
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(actor.actorImg))),
                      ),
                      Text(
                        actor.name,
                        style: whiteTextStyle,
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
