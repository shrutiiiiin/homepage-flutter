import 'package:flutter/material.dart';

class intropage3 extends StatelessWidget {
  const intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[100],
      child: Center(
        child: Text(
          'this is page 3',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
