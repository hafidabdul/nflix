import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/widgets/play_button.dart';


class FilmRecomendationWidgets extends StatelessWidget {
  const FilmRecomendationWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 250,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/gmbr1.jpg'))),
          ),
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You started watching',
                        style: whiteTextStyle.copyWith(
                            fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'La Casa de Papel',
                        style: whiteTextStyle.copyWith(
                            fontWeight: bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Part 4',
                        style: whiteTextStyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: kRedColor,
                        ),
                        unratedColor: kGreyColor,
                        itemCount: 5,
                        itemSize: 15.0,
                        direction: Axis.horizontal,
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Spain|2017|Trailer',
                        style: whiteTextStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Watching : ',
                            style: whiteTextStyle,
                          ),
                          Text(
                            '68%',
                            style:
                                whiteTextStyle.copyWith(fontWeight: extraLight),
                          )
                        ],
                      ),SizedBox(height: 7,),
                      PlayButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

