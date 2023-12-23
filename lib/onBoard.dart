import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Homepage.dart';
import 'intropage/intro_pg1.dart';
import 'intropage/intro_pg2.dart';
import 'intropage/intro_pg3.dart';

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
          onPageChanged: (index) {
            setState(() {
              var onLastpage = (index == 2);
            });
          },
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
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
              GestureDetector(
                child: Text('Done'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return homepage();
                  },
                  );
                  },

    
                    ),
              GestureDetector(
                child: Text('Next'),
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
