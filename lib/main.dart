import 'package:flutter/material.dart';
import 'package:homepagedemo/intropage/intro_pg1.dart';
import 'package:homepagedemo/intropage/intro_pg2.dart';
import 'package:homepagedemo/intropage/intro_pg3.dart';
import 'navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'onBoard.dart';
import 'package:homepagedemo/Homepage.dart';

void main() {
  runApp(design());
}

class design extends StatelessWidget {
  const design({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
          centerTitle: true,
          backgroundColor: Colors.amber[100],
        ),
        drawer: Drawer(
          child: NavBar(),
        ),
        body: onboarding(),
      ),
    );
  }
}
