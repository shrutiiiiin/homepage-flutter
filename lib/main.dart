import 'package:flutter/material.dart';
import 'navbar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'card.dart';

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
          backgroundColor: Colors.pink[100],
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
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          child: Image(
            image: AssetImage('assests/images/bg1.jpg'),
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('assests/images/bg2.jpg'),
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('assests/images/bg3.jpg'),
          ),
        ),
      ],
    );
  }
}
