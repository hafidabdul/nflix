import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nflix/shared/theme.dart';

class PopularCard extends StatelessWidget {
  final String imageUrls;
  final String title;
  final double rating;
  final int viewer;
  const PopularCard(
      {Key? key,
      required this.imageUrls,
      required this.title,
      this.rating = 0,
      this.viewer = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(top: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: 120,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageUrls))),
          ),
          Text(
            title,
            style: whiteTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBarIndicator(
                rating: rating,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: kRedColor,
                ),
                unratedColor: kGreyColor,
                itemCount: 5,
                itemSize: 15.0,
                direction: Axis.horizontal,
              ),
              Text(
                '(${viewer.toString()})',
                style: whiteTextStyle.copyWith(fontSize: 11),
              )
            ],
          ),
        ],
      ),
    );
  }
}
