import 'package:enableme/core/utils/colors.dart';
import 'package:flutter/material.dart';

class RoomsContainer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String? label;
  final bool? isSelected;
  final onSelected;

  // ignore: sort_constructors_first
  const RoomsContainer(
      {super.key,
      required this.label,
      this.isSelected = false,
      this.onSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 13, top: 17),
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: isSelected == true ? TheColors.lightBrown : TheColors.gray,
            borderRadius: const BorderRadius.all(
              Radius.circular(50.0),
            ),
            border: Border.all(color: TheColors.gray)),
        child: Text(
          label!,
          style: TextStyle(
              fontSize: 18,
              color: isSelected == true ? TheColors.brown : Colors.black),
        ));
  }
}
