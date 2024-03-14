import 'package:flutter/material.dart';

class ButtonRelativeLayoutModel {
  String? buttonName;
  Alignment? alignment;

  ButtonRelativeLayoutModel({
    this.buttonName,
    this.alignment,
  });

  ButtonRelativeLayoutModel.fromJson(Map<String, dynamic> json) {
    buttonName = json['buttonName'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['buttonName'] = buttonName;
    data['alignment'] = alignment;

    return data;
  }
}