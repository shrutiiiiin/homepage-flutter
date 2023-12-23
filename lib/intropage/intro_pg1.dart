import 'package:flutter/material.dart';

class intropage1 extends StatelessWidget {
  const intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image(
            height:
                double.maxFinite, //// USE THIS FOR THE MATCH WIDTH AND HEIGHT
            width: double.maxFinite,
            image: AssetImage('assests/images/design.png'),
          ),
          Text(
            'Interior designing course',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
