import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  final String title;
  final double width;
  const BlueBox({
    super.key,
    required this.title,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: width,
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
