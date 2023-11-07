import 'package:flutter/material.dart';
import 'package:portifolio/Modules/home_page/widgets/projects_list.dart';
import 'package:portifolio/Modules/projects_page/models/project_model.dart';
import 'package:portifolio/Modules/projects_page/projects.dart';

class ProjectsPageWeb extends StatefulWidget {
  const ProjectsPageWeb({Key? key}) : super(key: key);

  @override
  State<ProjectsPageWeb> createState() => _ProjectsPageWebState();
}

class _ProjectsPageWebState extends State<ProjectsPageWeb>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final mobileProjects = List<Project>.from(projects.where(
        (element) => element.platformType.contains(PlatformType.mobile)));
    final webProjects = List<Project>.from(projects
        .where((element) => element.platformType.contains(PlatformType.web)));
    final desktopProjects = List<Project>.from(projects.where(
        (element) => element.platformType.contains(PlatformType.desktop)));
    final flutterProjects = List<Project>.from(projects.where(
        (element) => element.technologyUsed.contains(TechnologyUsed.flutter)));
    final pythonProjects = List<Project>.from(projects.where(
        (element) => element.technologyUsed.contains(TechnologyUsed.python)));
    final unityProjects = List<Project>.from(projects.where(
        (element) => element.technologyUsed.contains(TechnologyUsed.unity)));
    final javaProjects = List<Project>.from(projects.where(
        (element) => element.technologyUsed.contains(TechnologyUsed.java)));

    return LayoutBuilder(
      builder: (_, constraints) {
        return DefaultTabController(
          length: 7,
          child: Scaffold(
              backgroundColor: const Color(0xff1c1e1f),
              appBar: AppBar(
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
                        onPressed: () {},
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
                  bottom: const TabBar(
                    tabs: [
                      Tab(
                        icon: Text("Mobile"),
                      ),
                      Tab(
                        icon: Text("Web"),
                      ),
                      Tab(
                        icon: Text("Desktop"),
                      ),
                      Tab(
                        icon: Text("Flutter"),
                      ),
                      Tab(
                        icon: Text("Python"),
                      ),
                      Tab(
                        icon: Text("Unity"),
                      ),
                      Tab(
                        icon: Text("Java"),
                      ),
                    ],
                  )),
              body: TabBarView(
                children: [
                  ProjectsList(list: mobileProjects),
                  ProjectsList(list: webProjects),
                  ProjectsList(list: desktopProjects),
                  ProjectsList(list: flutterProjects),
                  ProjectsList(list: pythonProjects),
                  ProjectsList(list: unityProjects),
                  ProjectsList(list: javaProjects),
                ],
              )),
        );
      },
    );
  }
}
