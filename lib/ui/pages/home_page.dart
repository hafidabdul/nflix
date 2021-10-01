import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/pages/homePage/home_films_page.dart';
import 'package:nflix/ui/pages/homePage/home_main_page.dart';
import 'package:nflix/ui/pages/homePage/home_serials_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget getTabBar() {
    return Container(
      child:
          TabBar(indicatorColor: kRedColor, controller: tabController, tabs: [
        Tab(text: "Main"),
        Tab(text: "Films"),
        Tab(text: "Serials"),
      ]),
    );
  }

  Widget getTabBarPages() {
    return TabBarView(controller: tabController, children: <Widget>[
      HomeMainPage(),
      HomeFilmsPagePage(),
      HomeSerialsPage()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kBlackColor,
            flexibleSpace: SafeArea(
              child: getTabBar(),
            ),
          ),
          body: getTabBarPages()),
    );
  }
}
