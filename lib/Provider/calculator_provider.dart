import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String _output = '0';
  String get output => _output;

  void addingDigital(String digit) {
    if (_output == '0') {
      _output = digit;
    } else {
      _output += digit;
    }
    notifyListeners();
  }

  void clear() {
    _output = '0';
    notifyListeners();
  }

  void calculate() {
    try {
      final result = _evaluateExpression(_output);
      _output = _formatResult(result);
    } catch (e) {
      _output = 'Error';
    }
    notifyListeners();
  }

  double _evaluateExpression(String expression) {
    expression = expression.replaceAll('×', '*').replaceAll('÷', '/'); 
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    return eval;
  }

  String _formatResult(double result) {
    if (result == result.toInt()) {
      return result.toInt().toString();
    } else {
      return result.toString(); 
    }
  }
}
