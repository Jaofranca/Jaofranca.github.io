import 'package:flutter/material.dart';

class ProjectTabBar extends StatelessWidget implements PreferredSizeWidget {
  const ProjectTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          icon: Text("Mobile"),
        ),
        Tab(
          icon: Text("Web"),
        ),
        Tab(
          icon: Text("Desktop"),
        ),
        Tab(
          icon: Text("Flutter"),
        ),
        Tab(
          icon: Text("Python"),
        ),
        Tab(
          icon: Text("Unity"),
        ),
        Tab(
          icon: Text("Java"),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
