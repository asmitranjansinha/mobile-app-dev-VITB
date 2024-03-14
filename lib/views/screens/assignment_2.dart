import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  final subtitleStyle = const TextStyle(
    fontSize: 15.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  Color scaffoldColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CSE',
              style: subtitleStyle.copyWith(
                color:
                    scaffoldColor == Colors.yellow ? Colors.red : Colors.white,
              ),
            ),
            Text(
              'VIT',
              style: subtitleStyle.copyWith(
                color:
                    scaffoldColor == Colors.yellow ? Colors.red : Colors.white,
              ),
            ),
            Text(
              'Students',
              style: subtitleStyle.copyWith(
                color:
                    scaffoldColor == Colors.yellow ? Colors.red : Colors.white,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                colorBoxButton(
                  color: Colors.red,
                  isSelected: scaffoldColor == Colors.red,
                  onTap: () {
                    setState(() {
                      scaffoldColor = Colors.red;
                    });
                  },
                ),
                const SizedBox(
                  width: 20.0,
                ),
                colorBoxButton(
                  color: Colors.yellow,
                  onTap: () {
                    setState(() {
                      scaffoldColor = Colors.yellow;
                    });
                  },
                  isSelected: scaffoldColor == Colors.yellow,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                colorBoxButton(
                  color: Colors.blue,
                  onTap: () {
                    setState(() {
                      scaffoldColor = Colors.blue;
                    });
                  },
                  isSelected: scaffoldColor == Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Assignment 2",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget colorBoxButton({
    required Color color,
    void Function()? onTap,
    bool isSelected = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 55.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            5.0,
          ),
          border: isSelected
              ? Border.all(
                  color: Colors.black,
                  width: 2.0,
                )
              : null,
        ),
      ),
    );
  }
}
