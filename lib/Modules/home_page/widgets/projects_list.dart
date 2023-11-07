import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/models/project_model.dart';
import 'package:portifolio/Modules/projects_page/widgets/project_card.dart';

class ProjectsList extends StatelessWidget {
  final List<Project> list;
  const ProjectsList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          return ProjectCard(
            project: list[index],
          );
        });
  }
}
