import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/image_controller.dart';

class HorizontalImageScreen extends StatelessWidget {
  const HorizontalImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageController = Provider.of<ImageController>(context);
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          reverse: true,
          itemCount: imageController.images.length,
          itemBuilder: (context, index) {
            final images = imageController.images;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                child: Column(
                  children: [
                    Image.asset(
                      images[index].imagePath!,
                    ),
                    Text(
                      images[index].title!,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Horizontal Images",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
