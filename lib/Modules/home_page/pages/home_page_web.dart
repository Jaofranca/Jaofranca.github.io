import 'package:flutter/material.dart';
import 'package:portifolio/Modules/home_page/widgets/app_base_button.dart';
import 'package:portifolio/Modules/home_page/widgets/home_page_image.dart';
import 'package:portifolio/Modules/home_page/widgets/icon_button_svg.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page.dart';
import 'package:portifolio/Modules/widgets/reusable_app_bar.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({Key? key}) : super(key: key);

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Scaffold(
            backgroundColor: const Color(0xff1c1e1f),
            appBar: const ReusableAppBar(),
            body: SizedBox(
              height: constraints.maxHeight,
              width: constraints.maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomePageImage(
                    height: constraints.maxHeight * 0.3,
                    width: constraints.maxWidth * 0.2,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "João Victor França - Desenvolvedor Flutter",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const Divider(
                            height: 20,
                            thickness: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppBaseButton(
                                height: 50,
                                width: 100,
                                title: "Sobre mim",
                                color: Colors.blueGrey,
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const ProjectsPage(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              AppBaseButton(
                                height: 50,
                                width: 100,
                                title: "Projetos",
                                color: Colors.grey,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const ProjectsPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Wrap(
                            spacing: 30,
                            children: [
                              IconButtonSvg(
                                asset: 'assets/icons/github.svg',
                              ),
                              IconButtonSvg(
                                asset: 'assets/icons/gmail.svg',
                              ),
                              IconButtonSvg(
                                asset: 'assets/icons/linkedin.svg',
                              ),
                              IconButtonSvg(
                                asset: 'assets/icons/resume.svg',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}
