import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/controller/image_controller.dart';
import 'package:test_app/views/components/image_card.dart';

class MultipleImageScreen extends StatelessWidget {
  const MultipleImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageController = Provider.of<ImageController>(context);
    return Scaffold(
      body: ListView.builder(
          itemCount: imageController.images.length,
          itemBuilder: (context, index) {
            final images = imageController.images;
            return ImageCard(
              imagePath: images[index].imagePath!,
              imageTitle: images[index].title!,
            );
          }),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Multiple Images",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
