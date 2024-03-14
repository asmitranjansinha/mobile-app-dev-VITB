import 'dart:developer';

import 'package:flutter/material.dart';

class CommonController extends ChangeNotifier {
  double? _additionResult;

  double get additionResult => _additionResult ?? 0.0;

  set additionResult(double val) {
    _additionResult = val;
    notifyListeners();
  }

  additionOf2Nos({
    required double number1,
    required double number2,
  }) {
    try {
      additionResult = number1 + number2;
    } catch (e) {
      log(e.toString());
    }
  }
}
