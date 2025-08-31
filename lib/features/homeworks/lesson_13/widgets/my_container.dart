import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({required this.color, required this.alignment, super.key});

  final Color color;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      alignment: alignment,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Icon(Icons.star, color: Colors.white),
            Text(
              'Привіт, Flutter!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.star, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
