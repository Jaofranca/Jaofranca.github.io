import 'package:flutter/material.dart';
import 'package:portifolio/Modules/experiences_page/pages/experiences_page.dart';
import 'package:portifolio/Modules/home_page/pages/home_page.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page.dart';

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabBar? tabBar;

  const ReusableAppBar({Key? key, this.tabBar}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: TextButton(
          child: const Text(
            "@JaoFranca",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            //TODO: previnir que o usuario va pra essa pagina caso ja esteja nela

            Navigator.maybePop(context);
          },
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExperiencesPage(),
                    ));
              },
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
