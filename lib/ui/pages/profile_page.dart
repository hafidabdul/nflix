import 'package:flutter/material.dart';
import 'package:nflix/shared/theme.dart';
import 'package:nflix/ui/widgets/infomation_profile.dart';
import 'package:nflix/ui/widgets/setting_widget_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlackColor,
        appBar: AppBar(
          backgroundColor: kBlackColor,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: kWhiteColor,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(width: double.infinity,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Profile',    
                style: whiteTextStyle.copyWith(fontSize: 40, fontWeight: black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/gmbr2.jpg'))),
            ),
            Text(
              'Lesliee',
              style: whiteTextStyle.copyWith(fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            Text(
              'hfdhfdhfd16@gmail.com',
              style: whiteTextStyle.copyWith(fontWeight: light),
              textAlign: TextAlign.center,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InformationProfile(count: 212,name: 'Watched',),
                InformationProfile(count: 22,name: 'Started',),
                InformationProfile(count: 222,name: 'Favorite',),
               
              ],
            ),
            Align(alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(color: kGreyColor),
                child: Column(
                  children: [
                    SettingWidgetList(
                      gambar: Icons.web,
                      name: 'Language',
                      choose: 'English',
                    ),
                    SettingWidgetList(
                      gambar: Icons.phone,
                      name: 'Phone Number',
                      choose: 'Add',
                    ),
                    SettingWidgetList(
                      gambar: Icons.notifications,
                      name: 'Privacy Settings',
                      choose: '',
                    ),
                    SettingWidgetList(
                      gambar: Icons.privacy_tip,
                      name: 'Contact Support',
                      choose: '',
                    ),
                    SettingWidgetList(
                      gambar: Icons.contact_mail,
                      name: 'Language',
                      choose: '',
                    ),
                    SettingWidgetList(
                      gambar: Icons.logout,
                      name: 'LogOut',
                      choose: '',
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

