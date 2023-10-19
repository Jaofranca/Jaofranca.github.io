import 'package:flutter/material.dart';
import 'package:portifolio/Modules/home_page/pages/home_page_web.dart';

import 'home_page_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth < 700) {
        return const HomePageMobile();
      } else {
        return const HomePageWeb();
      }
    });
  }
}
