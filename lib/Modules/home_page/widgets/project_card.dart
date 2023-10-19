import 'package:flutter/material.dart';
import 'package:portifolio/Modules/home_page/widgets/project_tag.dart';

class ProjectCard extends StatefulWidget {
  final double height;
  final double width;
  const ProjectCard(this.height, this.width, {Key? key}) : super(key: key);

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: Colors.grey,
          )),
      height: widget.height,
      width: widget.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.grey,
                )),
            width: widget.width * 0.2,
            height: widget.height,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Quem Paga?",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Um Aplicativo Simples",
                style: TextStyle(fontSize: 12),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0, left: 8.0),
                child: Row(
                  children: const [
                    ProjectTag(
                      title: 'Flutter',
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ProjectTag(
                      title: 'Flutter',
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
