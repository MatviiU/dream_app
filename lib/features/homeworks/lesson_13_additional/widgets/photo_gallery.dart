import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.red, height: 100),
        Container(color: Colors.green, height: 100),
        Container(color: Colors.blue, height: 100),
        Container(color: Colors.yellow, height: 100),
      ],
    );
  }
}
