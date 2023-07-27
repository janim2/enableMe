import 'package:enableme/core/utils/colors.dart';
import 'package:enableme/src/features/dashboard/widgets/circleWithImageInside.dart';
import 'package:flutter/material.dart';

import 'circularStructureWithPlusInside.dart';

class RoomsTypesContainer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String? roomLabel;
  final int? devicesNumber;
  final String? bgImage;
  final double? height;
  final double? width;
  final onClick;
  final bool? isTransparent;

  // ignore: sort_constructors_first
  const RoomsTypesContainer(
      {super.key,
      required this.roomLabel,
      required this.devicesNumber,
      this.bgImage,
      this.height = 240,
      this.width = 130,
      this.onClick,
      this.isTransparent = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13, top: 17, right: 13),
      height: height!,
      width: width!,
      decoration: BoxDecoration(
          color: isTransparent == false ? Colors.transparent : TheColors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(color: TheColors.white)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(children: [
          Image.asset(
            bgImage!,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: roomLabel,
                      style: const TextStyle(
                        color: TheColors.brown,
                        fontFamily: "RokkitRegular",
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n$devicesNumber devices',
                          style: const TextStyle(
                              fontFamily: "RokkitRegular",
                              color: TheColors.brown,
                              fontSize: 15
                              // decoration: TextDecoration.underline,
                              ),
                        ),
                      ],
                    ),
                  ),
                  CircleWithImageInside(
                    onClick: onClick,
                    icon: Icons.arrow_forward,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
