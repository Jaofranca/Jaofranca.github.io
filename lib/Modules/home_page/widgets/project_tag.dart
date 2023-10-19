import 'package:flutter/material.dart';

class ProjectTag extends StatefulWidget {
  final String title;
  final Color color;
  const ProjectTag({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  State<ProjectTag> createState() => _ProjectTagState();
}

class _ProjectTagState extends State<ProjectTag> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 50,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            border: Border.all(color: Colors.black, width: 0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
