import 'package:flutter/material.dart';
import 'navbar.dart';

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
          title: Text('Interior Design'),
          centerTitle: true,
          backgroundColor: Colors.pink[100],
        ),
        drawer: Drawer(
          child: NavBar(),
        ),
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
