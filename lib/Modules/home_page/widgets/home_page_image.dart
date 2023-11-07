import 'package:flutter/material.dart';

class HomePageImage extends StatelessWidget {
  final double height;
  final double width;

  const HomePageImage({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: height,
          backgroundImage: const AssetImage('assets/images/image.png'),
        )

        // Container(
        //   height: height,
        //   width: width,
        //   decoration: BoxDecoration(
        //     borderRadius: const BorderRadius.all(Radius.circular(10)),
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: <Color>[
        //         Colors.black.withOpacity(0.0),
        //         Colors.black.withOpacity(0.8),
        //       ],
        //       stops: const [0.10, 1],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
