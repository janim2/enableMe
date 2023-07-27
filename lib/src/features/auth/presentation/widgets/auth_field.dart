import 'package:enableme/core/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    this.icon,
    this.labelText,
    this.controller,
    this.onSubmit,
    this.keyboardType,
  });

  final Widget? icon;
  final String? labelText;
  final TextEditingController? controller;
  final ValueChanged<String?>? onSubmit;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width,
        height: 50,
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: labelText?.toUpperCase(),
            filled: true,
            prefixIcon: icon,
            hintStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontFamily: "RokkitRegular"),
            fillColor: TheColors
                .brown, // Adjust the text field background color if needed
          ),
          onFieldSubmitted: onSubmit,
          validator: (value) {
            if (value != null && value.isNotEmpty) return null;
            return labelText != null
                ? 'Please enter your $labelText'
                : 'This Field cannot be empty';
          },
        ),
      ),
    );
  }
}
