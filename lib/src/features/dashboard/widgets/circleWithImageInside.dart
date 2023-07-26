import 'package:enableme/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CircleWithImageInside extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final IconData? icon;
  final onClick;
  final Color? theColor;

  // ignore: sort_constructors_first
  const CircleWithImageInside(
      {super.key, this.icon, this.onClick, this.theColor = TheColors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: Container(
          color: theColor,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              icon!,
              color: TheColors.brown,
            ),
          ),
        ),
      ),
    );
  }
}
