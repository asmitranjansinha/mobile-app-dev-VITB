import 'package:flutter/material.dart';
import 'package:test_app/views/components/app_popup.dart';

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String imageTitle;
  const ImageCard({
    super.key,
    required this.imagePath,
    required this.imageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        18.0,
      ),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AppPopup(
                  child: Image.asset(
                imagePath,
              ));
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade300,
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 8.0,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                  child: Image.asset(
                    imagePath,
                    width: 350,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  imageTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
