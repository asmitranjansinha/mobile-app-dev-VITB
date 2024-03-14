import 'dart:ui';

import 'package:flutter/material.dart';

class AppPopup extends StatelessWidget {
  final Widget child;
  const AppPopup({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 10,
        sigmaY: 10,
      ),
      child: Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 20.0,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
