import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nflix/model/popularfilms.dart';
import 'package:nflix/shared/theme.dart';

class PlotWidgets extends StatelessWidget {
  const PlotWidgets({
    Key? key,
    required this.popularFilm,
  }) : super(key: key);

  final PopularFilm popularFilm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20,right: 20,top: 20),
      child: Column(
            children: [
              Container(margin: EdgeInsets.symmetric(vertical: 10),
                width:  double.infinity,
                child: Text(
                  'The Plots',
                  style: whiteTextStyle.copyWith(fontWeight: extraLight,fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                  popularFilm.description,
                  style: whiteTextStyle,
                  textAlign: TextAlign.justify,
                ),
            ],
          ),
    );
  }
}
