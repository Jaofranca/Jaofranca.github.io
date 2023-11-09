import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page_web.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProjectsPageWeb();
    // return LayoutBuilder(builder: (_, constraints) {
    //   if (constraints.maxWidth < 700) {
    //     return const ProjectsPageMobile();
    //   } else {
    //     return const ProjectsPageWeb();
    //   }
    // });
  }
}
