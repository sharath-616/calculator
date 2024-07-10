import 'package:calculator/Widget/custom_text_widgets.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: const CustomTextWidgets(
        text: 'Calculator',
        size: 30,
        color: Colors.black,
        fw: FontWeight.w500,
        letterSpacing: 3,
      ),
    );
  }
}
