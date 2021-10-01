import 'package:flutter/material.dart';
import 'package:nflix/model/actor.dart';
import 'package:nflix/model/popularfilms.dart';
import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/widgets/plot_widget.dart';
import 'package:nflix/ui/widgets/the_cost_widgets.dart';
import 'package:nflix/ui/widgets/trailer_widgets.dart';

class DetailPage extends StatelessWidget {
  final PopularFilm popularFilm;

  const DetailPage({
    Key? key,
    required this.popularFilm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: AppBar(leading: IconButton(
          onPressed: () {Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back_ios,
            color: kWhiteColor,
          ),
        ),
        title: Text(
          popularFilm.name,
          style: whiteTextStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: kRedColor,
              ))
        ],
        backgroundColor: kBlackColor,
      ),
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(popularFilm.imageUrls)))),
          PlotWidgets(popularFilm: popularFilm),
          TheCostWidgets(),TrailerWidgets()

        ],
      ),
    );
  }
}

