import 'package:enableme/core/utils/colors.dart';
import 'package:flutter/material.dart';

class AppilanceContainer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String? applianceLabel;
  final String? bgImage;
  final double? height;
  final double? width;

  // ignore: sort_constructors_first
  const AppilanceContainer(
      {super.key,
      required this.applianceLabel,
      this.bgImage,
      this.height = 130,
      this.width = 130});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13, top: 17),
      height: height!,
      width: width!,
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 24, 20, 16),
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(color: TheColors.white)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(children: [
          Image.asset(
            bgImage!,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                applianceLabel!,
                style: const TextStyle(
                    color: TheColors.brown, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
