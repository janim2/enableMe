import 'package:enableme/core/utils/colors.dart';
import 'package:enableme/src/features/dashboard/widgets/circleWithImageInside.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String? appLabel;
  final IconData? icon;
  final onLeftIconClick;

  // ignore: sort_constructors_first
  const MyAppBar(
      {super.key, required this.appLabel, this.icon, this.onLeftIconClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 17, right: 17, top: 17),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: TheColors.gray,
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
            border: Border.all(color: TheColors.gray)),
        height: 70.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: onLeftIconClick,
                child: CircleWithImageInside(
              icon: icon!,
            )),
            GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Text(
                  appLabel!,
                  style: const TextStyle(fontSize: 23),
                ),
              ),
            ),
            const CircleWithImageInside(
              icon: Icons.mic_none,
            )
          ],
        ));
  }
}
