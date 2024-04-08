import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/controller/image_controller.dart';

class UniversityImagesScreen extends StatelessWidget {
  const UniversityImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageController = Provider.of<ImageController>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          18.0,
        ),
        child: ListView.builder(
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: imageController.uniImages.length,
            itemBuilder: (context, index) {
              final images = imageController.uniImages;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Column(
                    children: [
                      Image.asset(images[index].imagePath!),
                      Text(
                        images[index].date!,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        images[index].time!,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "University Images",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
