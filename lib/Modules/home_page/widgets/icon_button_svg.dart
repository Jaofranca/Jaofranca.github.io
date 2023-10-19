import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconButtonSvg extends StatelessWidget {
  final String asset;
  const IconButtonSvg({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            asset,
            height: 40,
            width: 40,
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
