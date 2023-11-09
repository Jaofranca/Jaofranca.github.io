import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/Modules/experiences_page/pages/experiences_page.dart';
import 'package:portifolio/Modules/home_page/pages/home_page.dart';
import 'package:portifolio/Modules/projects_page/pages/projects_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
