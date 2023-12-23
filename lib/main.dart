import 'package:flutter/material.dart';
import 'package:homepagedemo/intropage/intro_pg1.dart';
import 'package:homepagedemo/intropage/intro_pg2.dart';
import 'package:homepagedemo/intropage/intro_pg3.dart';
import 'navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

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

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          children: [
            intropage1(),
            intropage2(),
            intropage3(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('SKip'),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
              Text('Next'),
            ],
          ),
        ),
      ],
    );
  }
}
