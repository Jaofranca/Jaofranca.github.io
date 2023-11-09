import 'package:flutter/material.dart';

class AppBaseButton extends StatefulWidget {
  final double width;
  final double height;
  final String title;
  final Color color;
  final Function()? onPressed;
  const AppBaseButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.title,
      required this.color,
      required this.onPressed})
      : super(key: key);

  @override
  State<AppBaseButton> createState() => _AppBaseButtonState();
}

class _AppBaseButtonState extends State<AppBaseButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: widget.onPressed,
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: Padding(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )),
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
