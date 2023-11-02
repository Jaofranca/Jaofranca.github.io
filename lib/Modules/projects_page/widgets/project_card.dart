import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/widgets/project_tag.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String subTitle;
  const ProjectCard({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(subTitle),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                ProjectTagTech(
                  name: "C#",
                  color: Colors.red,
                ),
                ProjectTagTech(
                  name: "Unity",
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
