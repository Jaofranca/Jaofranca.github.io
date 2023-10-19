import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text(
              'Sobre mim',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Projetos',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const ProjectsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Experiência',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Contato',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
