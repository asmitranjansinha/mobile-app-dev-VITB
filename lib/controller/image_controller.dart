import 'package:flutter/material.dart';
import 'package:test_app/models/image_title_model.dart';

class ImageController extends ChangeNotifier {
  final List<ImageTitleModel> _images = [
    ImageTitleModel(imagePath: 'assets/images/dragon.jpeg', title: 'dragon'),
    ImageTitleModel(
        imagePath: 'assets/images/heisenberg.jpeg', title: 'heisenberg'),
    ImageTitleModel(imagePath: 'assets/images/jesse.jpeg', title: 'jesse'),
    ImageTitleModel(imagePath: 'assets/images/tyrion.jpg', title: 'tyrion'),
  ];

  List<ImageTitleModel> get images => _images;
}
