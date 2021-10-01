import 'package:flutter/material.dart';
import 'package:nflix/ui/pages/login_page.dart';
import 'package:nflix/ui/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => LoginPage(), '/main': (context) => MainPage()},
    );
  }
}
