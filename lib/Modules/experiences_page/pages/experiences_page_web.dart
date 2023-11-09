import 'package:flutter/material.dart';
import 'package:portifolio/Modules/experiences_page/experiences.dart';
import 'package:portifolio/Modules/experiences_page/widgets/experience_card.dart';
import 'package:portifolio/Modules/widgets/reusable_app_bar.dart';

class ExperiencesPageWeb extends StatelessWidget {
  const ExperiencesPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Scaffold(
          backgroundColor: Colors.black,
          appBar: const ReusableAppBar(),
          body: Center(
            child: SizedBox(
                // height: constraints.maxHeight,
                width: constraints.maxWidth < 700
                    ? constraints.maxWidth * 0.7
                    : constraints.maxWidth * 0.4,
                child: ListView.builder(
                    itemCount: experiences.length,
                    itemBuilder: (_, index) {
                      return ExperienceCard(
                        position: experiences[index].position,
                        company: experiences[index].company,
                        workTime: experiences[index].workTime,
                        jobDescription: experiences[index].jobDescription,
                      );
                    })),
          ));
    });
  }
}
