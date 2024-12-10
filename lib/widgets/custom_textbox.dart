import 'package:flutter/material.dart';
import 'package:widgets_package/theme/white_color_scheme.dart';

class CustomTextBox extends StatelessWidget {
  final String labelText;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType keyboardType;

  const CustomTextBox({
    Key? key,
    required this.labelText,
    this.isPassword = false,
    this.controller,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var irugColorScheme = WhiteColorScheme();

    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: irugColorScheme.cinza,
            width: 2,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: irugColorScheme.verde,
            width: 2,
          ),
        ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
