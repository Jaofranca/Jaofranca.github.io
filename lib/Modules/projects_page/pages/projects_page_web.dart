import 'package:flutter/material.dart';

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
            backgroundColor: Color(0xff1c1e1f),
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
                child: Column(
                  children: [
                    Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            title: Text('ChessCake'),
                            subtitle: Text('Chess Game with candy based'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: const [
                                    CircleAvatar(
                                      radius: 5,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Flutter",
                                      style: TextStyle(fontSize: 10),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )));
      },
    );
  }
}
