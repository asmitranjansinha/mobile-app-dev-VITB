import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/controller/relative_layout_controller.dart';
import 'package:test_app/controller/image_controller.dart';
import 'package:test_app/utils/constants/text_constants.dart';
import 'package:test_app/views/home_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ImageController(),
    ),
    ChangeNotifierProvider(
      create: (_) => RelativeLayoutController(),
    ),
  ], child: const TestApp()));
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
