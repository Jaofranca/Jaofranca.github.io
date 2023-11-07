import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/models/project_model.dart';
import 'package:portifolio/Modules/projects_page/widgets/project_tag.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(project.title),
            subtitle: Text(project.subtitle),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: project.technologyUsed.length,
                  itemBuilder: (context, index) {
                    return ProjectTagTech(
                      name: project.technologyUsed[index].toString(),
                      color: Colors.red,
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}
