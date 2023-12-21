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
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications_none_outlined),
            title: Text('Notifications'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share_outlined),
            title: Text('Share'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('About'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
