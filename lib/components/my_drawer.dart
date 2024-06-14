import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}

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
            onTap: () {
              _launchInBrowser(Uri.parse('https://github.com/KauaHenSilva'));
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
