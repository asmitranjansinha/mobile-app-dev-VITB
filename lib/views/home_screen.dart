import 'package:flutter/material.dart';
import 'package:test_app/views/screens/addition_screen.dart';
import 'package:test_app/views/screens/assignment_2.dart';
import 'package:test_app/views/screens/grid_type_layout_screen.dart';
import 'package:test_app/views/screens/horizontal_image_screen.dart';
import 'package:test_app/views/screens/multiple_image_screen.dart';
import 'package:test_app/views/screens/popup_button_screen.dart';
import 'package:test_app/views/screens/relative_layout_screen.dart';
import 'package:test_app/views/screens/screen_one.dart';
import 'package:test_app/views/screens/university_images_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ScreenOne()),
                );
              },
              child: const Text("Text Example"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Assignment2()),
                );
              },
              child: const Text("Assignment 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const MultipleImageScreen()),
                );
              },
              child: const Text("Multiple Images"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const HorizontalImageScreen()),
                );
              },
              child: const Text("Horizontal Images"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const RelativeLayoutScreen()),
                );
              },
              child: const Text("Relative Layout"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => AdditionScreen()),
                );
              },
              child: const Text("Addition of 2 Nos"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const GridTypeLayoutScreen()),
                );
              },
              child: const Text("Grid Type Layout"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const UniversityImagesScreen()),
                );
              },
              child: const Text("University Images"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const PopupButtonScreen()),
                );
              },
              child: const Text("Popup Button"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Test App - Mobile App Dev",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
