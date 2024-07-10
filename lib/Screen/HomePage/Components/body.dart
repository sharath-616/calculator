import 'package:calculator/Provider/calculator_provider.dart';
import 'package:calculator/Screen/HomePage/button_fuction.dart';
import 'package:calculator/Widget/custom_appbar.dart';
import 'package:calculator/Widget/custom_text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: CustomAppbar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Consumer<CalculatorProvider>(
                builder: (context, value, child) => CustomTextWidgets(
                  text: value.output,
                  size: 48,
                  fw: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            children: [
              buildButton(context, '7'),
              buildButton(context, '8'),
              buildButton(context, '9'),
              buildButton(context, '/'),
            ],
          ),
          Row(
            children: [
              buildButton(context, '4'),
              buildButton(context, '5'),
              buildButton(context, '6'),
              buildButton(context, '*'),
            ],
          ),
          Row(
            children: [
              buildButton(context, '1'),
              buildButton(context, '2'),
              buildButton(context, '3'),
              buildButton(context, '-'),
            ],
          ),
          Row(
            children: [
              buildButton(context, '0'),
              buildButton(context, '.'),
              buildButton(context, '='),
              buildButton(context, '+'),
            ],
          ),
          Row(
            children: [
              buildButton(context, 'C'),
            ],
          ),
        ],
      ),
    );
  }
}
