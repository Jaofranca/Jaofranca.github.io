import 'package:flutter/material.dart';
import 'package:portifolio/Modules/widgets/reusable_app_bar.dart';

class ExperiencesPageWeb extends StatelessWidget {
  const ExperiencesPageWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: const ReusableAppBar(),
        body: SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: const Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          "aa",
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Text(" aaaa"),
                      ),
                      Text(" aaaaaa")
                    ],
                  ),
                )
              ],
            )),
      );
    });
  }
}
