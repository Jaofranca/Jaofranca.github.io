import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portifolio/Modules/home_page/widgets/app_base_button.dart';
import 'package:portifolio/Modules/home_page/widgets/home_page_image.dart';
import 'package:portifolio/Modules/home_page/widgets/icon_button_svg.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page.dart';

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
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: const Text(
                "JaoFranca",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: const Text("Sobre Mim",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white))),
                TextButton(
                    onPressed: () {},
                    child: const Text("Experiência",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white))),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ProjectsPage(),
                        ),
                      );
                    },
                    child: const Text("Projetos",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white))),
                TextButton(
                    onPressed: () {},
                    child: const Text("Curriculos",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            color: Colors.white))),
              ],
            ),
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
                            children: const [
                              AppBaseButton(
                                height: 50,
                                width: 100,
                                title: "Sobre mim",
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              AppBaseButton(
                                  height: 50,
                                  width: 100,
                                  title: "Projetos",
                                  color: Colors.grey),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            spacing: 30,
                            children: const [
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
