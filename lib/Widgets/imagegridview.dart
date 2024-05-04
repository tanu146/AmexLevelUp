import 'package:flutter/material.dart';

class ImageGridView extends StatelessWidget {
  final List<String> imageNames;

  const ImageGridView({Key? key, required this.imageNames}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
      ),
      itemCount: imageNames.length,
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          'assets/${imageNames[index]}', // Path to the asset image
          fit: BoxFit.cover, // Adjust the image to cover the entire area
        );
      },
    );
  }
}