import 'package:flutter/material.dart';

class intropage2 extends StatelessWidget {
  const intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(
            image: AssetImage('assests/images/design2.png'),
          ),
          Text('Explore with us'),
        ],
      ),
    );
  }
}
