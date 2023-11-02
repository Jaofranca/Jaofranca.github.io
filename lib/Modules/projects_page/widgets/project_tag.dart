import 'package:flutter/material.dart';

class ProjectTagTech extends StatelessWidget {
  final String name;
  final Color color;
  const ProjectTagTech({Key? key, required this.name, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 7,
            backgroundColor: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
