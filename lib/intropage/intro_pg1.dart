import 'package:flutter/material.dart';

class intropage1 extends StatelessWidget {
  const intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      child: Center(
        child: Text(
          'Interior designing course',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
