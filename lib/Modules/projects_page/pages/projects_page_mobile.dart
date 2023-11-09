import 'package:flutter/material.dart';
import 'package:portifolio/Modules/home_page/widgets/app_base_button.dart';
import 'package:portifolio/Modules/home_page/widgets/app_drawer.dart';
import 'package:portifolio/Modules/home_page/widgets/home_page_image.dart';
import 'package:portifolio/Modules/home_page/widgets/icon_button_svg.dart';

class ProjectsPageMobile extends StatefulWidget {
  const ProjectsPageMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsPageMobile> createState() => _ProjectsPageMobileState();
}

//TODO: esticar a imagem
class _ProjectsPageMobileState extends State<ProjectsPageMobile> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        drawer: const AppDrawer(),
        body: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    HomePageImage(
                      height: constraints.maxHeight * 0.2,
                      width: constraints.maxWidth * 0.4,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "João Victor França ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Desenvolvedor Flutter",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Divider(
                          height: 20,
                          thickness: .5,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // AppBaseButton(
                            //   height: 50,
                            //   width: 100,
                            //   title: "Sobre mim",
                            //   color: Colors.blue,
                            // ),
                            // SizedBox(
                            //   width: 25,
                            // ),
                            // AppBaseButton(
                            //     height: 50,
                            //     width: 100,
                            //     title: "Projetos",
                            //     color: Colors.red),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
