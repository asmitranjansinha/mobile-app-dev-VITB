import 'package:flutter/material.dart';
import 'package:test_app/models/image_date_model.dart';
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

  final List<ImageDateModel> _uniImages = [
    ImageDateModel(
      imagePath: 'assets/images/IMAGE1.png',
      date: '14 March 2024',
      time: '12:41 PM',
    ),
    ImageDateModel(
      imagePath: 'assets/images/IMAGE2.png',
      date: '14 March 2024',
      time: '12:41 PM',
    ),
    ImageDateModel(
      imagePath: 'assets/images/IMAGE3.png',
      date: '14 March 2024',
      time: '12:41 PM',
    ),
    ImageDateModel(
      imagePath: 'assets/images/IMAGE4.png',
      date: '14 March 2024',
      time: '12:41 PM',
    ),
  ];

  List<ImageDateModel> get uniImages => _uniImages;
}
