import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar? tabBar;

  const ReusableAppBar({Key? key, this.tabBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "JaoFranca",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text("Sobre Mim",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: const Text("Experiência",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Colors.white))),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ProjectsPage(),
                  ),
                );
              },
              child: const Text("Projetos",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: const Text("Curriculos",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      color: Colors.white))),
        ],
        bottom: tabBar);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
