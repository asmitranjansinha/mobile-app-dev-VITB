import 'package:flutter/material.dart';

class RelativeLayoutScreen extends StatelessWidget {
  const RelativeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Button 1'))),
              Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Button 2'))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Button 3'))),
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Button 4'))),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Relative Layout",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
