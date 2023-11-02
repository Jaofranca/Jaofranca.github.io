import 'package:flutter/material.dart';
import 'package:portifolio/Modules/projects_page/widgets/project_card.dart';

class ProjectsPageWeb extends StatefulWidget {
  const ProjectsPageWeb({Key? key}) : super(key: key);

  @override
  State<ProjectsPageWeb> createState() => _ProjectsPageWebState();
}

class _ProjectsPageWebState extends State<ProjectsPageWeb>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Scaffold(
            backgroundColor: const Color(0xff1c1e1f),
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
                    onPressed: () {},
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
                child: const Column(
                  children: [
                    ProjectCard(
                      title: "ChessCake",
                      subTitle:
                          "Um emocionante jogo de xadrez com uma adorável temática de doces criado em Unity.",
                    ),
                    ProjectCard(
                      title: " MtgSearcher",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " SaveFileManager",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " QuemPage",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " GcRandomizer",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " ArvoreRubroNegra",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " BackendJava",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " QuizzlerFlutter",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " Placa de transito",
                      subTitle: "",
                    ),
                    ProjectCard(
                      title: " Placa de transito",
                      subTitle: "",
                    )
                  ],
                )));
      },
    );
  }
}
