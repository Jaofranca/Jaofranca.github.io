import 'package:flutter/material.dart';
import 'package:portifolio/Modules/experiences_page/pages/experiences_page_mobile.dart';
import 'package:portifolio/Modules/experiences_page/pages/experiences_page_web.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth < 700) {
        return const ExperiencesPageMobile();
      } else {
        return const ExperiencesPageWeb();
      }
    });
  }
}
