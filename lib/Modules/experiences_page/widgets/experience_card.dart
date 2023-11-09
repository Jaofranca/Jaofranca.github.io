import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String position;
  final String company;
  final String workTime;
  final String jobDescription;
  const ExperienceCard(
      {Key? key,
      required this.company,
      required this.position,
      required this.workTime,
      required this.jobDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(position),
              Text(company),
              Text(workTime),
              const SizedBox(
                height: 10,
              ),
              Text(jobDescription)
            ],
          ),
        ),
      ),
    );
  }
}
