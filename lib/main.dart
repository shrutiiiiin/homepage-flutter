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
      ),
    );
  }
}
