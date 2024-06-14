import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const ListTile(
            title: Text('Kauã Henrique Da Silva'),
            subtitle: Text('KauaHenSilva'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/KauaHenSilva',
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('GitHub'),
            leading: const Icon(Icons.favorite),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
