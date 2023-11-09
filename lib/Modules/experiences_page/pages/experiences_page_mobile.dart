import 'package:flutter/material.dart';
import 'package:portifolio/Modules/experiences_page/experiences.dart';
import 'package:portifolio/Modules/experiences_page/widgets/experience_card.dart';
import 'package:portifolio/Modules/home_page/widgets/app_drawer.dart';

class ExperiencesPageMobile extends StatelessWidget {
  const ExperiencesPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Scaffold(
          backgroundColor: const Color(0xff1c1e1f),
          appBar: AppBar(
            title: const Text("Experiências"),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          drawer: const AppDrawer(),
          body: Center(
            child: SizedBox(
                // height: constraints.maxHeight,
                width: constraints.maxWidth * 0.8,
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
