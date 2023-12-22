import 'package:flutter/material.dart';

class cardpage extends StatelessWidget {
  const cardpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Card(
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Interior Designing Course'),
                SizedBox(height: 10),
                SizedBox(
                  child: Image.asset(
                    'assests/images/interior.jpg',
                    width: 180,
                    height: 180,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
