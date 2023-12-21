import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Shruti Naik',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text('shrutinaik@7gmail.com',
                style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assests/images/avatar.jpg')),
            ),
            decoration: BoxDecoration(
              color: Colors.pink[100],
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            title: Text('About'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
