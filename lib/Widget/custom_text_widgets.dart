import 'package:flutter/material.dart';

class CustomTextWidgets extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fw;
  final double? letterSpacing;
  const CustomTextWidgets({super.key, required this.text, this.color, this.size, this.fw, this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: fw, letterSpacing: letterSpacing),
    );
  }
}
