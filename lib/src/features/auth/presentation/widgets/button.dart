import 'package:enableme/core/utils/colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String labelText;
  final double width;
  final ontap;
  final IconData? icon;

  // ignore: sort_constructors_first
  MyButton(
      {required this.labelText, this.ontap, required this.width, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.all(5),
        width: width,
        height: 50,
        decoration: BoxDecoration(
            color: TheColors.brown,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            border: Border.all(color: TheColors.brown)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   icon,
            //   color: iconColor,
            // ),
            // const SizedBox(width: 10.0),
            Text(
              labelText!,
              style: const TextStyle(color: TheColors.white),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              icon,
              color: TheColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
