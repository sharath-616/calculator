import 'package:calculator/Provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildButton(BuildContext context, String label) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.black12, boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(100, 100, 111, 0.2),
            blurRadius: 29,
            spreadRadius: 0,
            offset: Offset(
              0,
              7,
            ),
          ),
        ]),
        child: TextButton(
          onPressed: () {
            if (label == '=') {
              Provider.of<CalculatorProvider>(context, listen: false).calculate();
            } else if (label == 'C') {
              Provider.of<CalculatorProvider>(context, listen: false).clear();
            } else {
              Provider.of<CalculatorProvider>(context, listen: false).addingDigital(label);
            }
          },
          child: Text(
            label,
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    ),
  );
}
