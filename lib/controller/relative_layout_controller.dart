import 'package:flutter/material.dart';

import '../models/button_relative_layout_model.dart';

class RelativeLayoutController extends ChangeNotifier {
  final List<ButtonRelativeLayoutModel> _buttons = [
    ButtonRelativeLayoutModel(
        buttonName: 'Button 1', alignment: Alignment.topLeft,),
    ButtonRelativeLayoutModel(
        buttonName: 'Button 2', alignment: Alignment.topRight),
    ButtonRelativeLayoutModel(
        buttonName: 'Button 3', alignment: Alignment.bottomLeft),
    ButtonRelativeLayoutModel(
        buttonName: 'Button 3', alignment: Alignment.bottomRight),
  ];
}
