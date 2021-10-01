import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nflix/model/popularfilms.dart';
import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/pages/detail_page.dart';
import 'package:nflix/ui/widgets/film_recomendation_widgets.dart';
import 'package:nflix/ui/widgets/popular_card.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({Key? key}) : super(key: key);

  Widget popularFilm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular',
                style: whiteTextStyle.copyWith(fontWeight: black, fontSize: 20),
              ),
              Text(
                'view all',
                style: whiteTextStyle.copyWith(fontWeight: light),
              )
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularFilmList.length,
                itemBuilder: (context, index) {              
                  final PopularFilm popularFilm = popularFilmList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage(popularFilm: popularFilm);
                      }));
                    },
                    child: PopularCard(
                      rating: popularFilm.rate,
                      imageUrls: popularFilm.imageUrls,
                      title: popularFilm.name,
                      viewer: popularFilm.viewer,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget soonFilm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Soon',
                style: whiteTextStyle.copyWith(fontWeight: black, fontSize: 20),
              ),
              Text(
                'view all',
                style: whiteTextStyle.copyWith(fontWeight: light),
              )
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularCard(
                    title: 'fake rider',
                    imageUrls: 'assets/gmbr5.jpg',
                  ),
                  PopularCard(
                    title: 'night rider',
                    imageUrls: 'assets/gmbr6.jpg',
                  ),
                  PopularCard(
                    title: 'ghost rider',
                    imageUrls: 'assets/gmbr7.jpg',
                  ),
                  PopularCard(
                    title: 'ghost rider',
                    imageUrls: 'assets/gmbr9.jpg',
                  ),
                ],
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlackColor,
        body: ListView(
          children: [FilmRecomendationWidgets(), popularFilm(), soonFilm()],
        ));
  }
}
